import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:build/build.dart';
import 'package:build_runner/build_runner.dart';
import 'package:build_test/build_test.dart';
import 'package:path/path.dart' as p;
import 'package:where/where.dart';

final PackageGraph packageGraph = new PackageGraph.forThisPackage();

final List<BuilderApplication> builderApplications = [
  applyToRoot(
    const _Dart2JsFacadeGenBuilder(),
    inputs: const [
      'lib/*.ts',
    ],
  ),
  applyToRoot(
    new CopyBuilder(
      inputExtension: '.comments.dart',
      extension: '.comments.dart',
    ),
  ),
];

final List<BuildAction> buildActions =
    createBuildActions(packageGraph, builderApplications);

class _Dart2JsFacadeGenBuilder implements Builder {
  static final Resource<Directory> tempDir = new Resource(
    Directory.systemTemp.createTemp,
    dispose: (d) => d.delete(recursive: true),
  );

  const _Dart2JsFacadeGenBuilder();

  static Future<String> findExecutable() async {
    var path = await where('dart_js_facade_gen');
    print('Found dart_js_facade_gen: $path');
    return path;
  }

  @override
  Map<String, List<String>> get buildExtensions {
    return {
      '.d.ts': ['.dart'],
      '.comments.d.ts': ['.dart'],
    };
  }

  @override
  Future build(BuildStep buildStep) async {
    var baseDir = await buildStep.fetchResource(tempDir);
    var dir =
        new Directory.fromUri(baseDir.uri.resolve(buildStep.inputId.package));
    var file =
        new File.fromUri(dir.uri.resolve(p.basename(buildStep.inputId.path)));
    if (!await file.exists()) await file.create(recursive: true);
    print('Temp file: ${file.path}');
    await buildStep.readAsBytes(buildStep.inputId).then(file.writeAsBytes);

    var newAsset = buildStep.inputId.changeExtension('.dart');

    if (newAsset.path.endsWith('.d.dart')) {
      var basename = p.basenameWithoutExtension(newAsset.path);
      var dirname = p.dirname(newAsset.path);
      var newPath = p.setExtension(p.join(dirname, basename), '.dart');
      newAsset = new AssetId(newAsset.package, newPath);
    }

    var process = await Process.start(await findExecutable(), [
      file.absolute.path,
      '--basePath=${baseDir.absolute.path}',
    ]);
    print(
        'Running dart_js_facade_gen ${file.absolute.path} --basePath=${baseDir.absolute.path}...');

    var buffer = new BytesBuilder();
    process.stdout.forEach(buffer.add);
    var exitCode = await process.exitCode;
    print('Exit code: $exitCode');

    if (exitCode != 0) {
      var stderr = await process.stderr.transform(UTF8.decoder).join();
      throw new StateError(
          'dart_js_facade_gen exited with code $exitCode: $stderr');
    } else {
      print('Writing ${newAsset.uri}');
      buildStep.writeAsBytes(newAsset, buffer.takeBytes());
    }
  }

  @override
  String toString() {
    return 'Dart2JsFacadeGenBuilder';
  }
}
