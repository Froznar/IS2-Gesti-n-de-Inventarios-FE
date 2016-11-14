library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/logistic_app.dart';
import 'package:logistic_ui/providers.dart';

@Component(
    selector: 'log-in',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'login.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class LogIn implements AfterViewInit {
  @ViewChild(LogisticApp)
  LogisticApp headerPanel;
  bool isLoading = true;
  bool added = false;
  bool init= false;

}