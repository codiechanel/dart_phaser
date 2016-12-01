import 'package:angular2/platform/browser.dart' show bootstrap;
import 'package:angular2/platform/common.dart'
    show HashLocationStrategy, LocationStrategy;
import 'package:angular2/core.dart' show provide;
import 'package:angular2/router.dart' show ROUTER_PROVIDERS;
import 'components/app.dart';

main() {
  bootstrap(ExampleAppComponent, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
