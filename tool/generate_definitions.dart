import 'dart:io';
import 'package:build_runner/build_runner.dart';
import 'build_actions.dart';

/// IMPORTANT: The generated definitions still need to be strong-mode tweaked by hand.
main() {
  print('Are you SURE you want to rebuild the definitions?');
  print('This will erase a LOT of painstakingly-done hand effort... That you will have to REDO.');
  print('Type, "YES, REBUILD DEFINITIONS" (without quotes) to continue.');
  var prompt = stdin.readLineSync().trim();
  if (prompt == 'YES, REBUILD DEFINITIONS')
    return build(buildActions, deleteFilesByDefault: true);
}