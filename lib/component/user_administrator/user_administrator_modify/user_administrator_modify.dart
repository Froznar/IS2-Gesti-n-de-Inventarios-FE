import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(selector: 'user-administrator-register', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'user_administrator_register.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserAdministratorRegister{
  bool modified = false;

  List<String> ids = ['1', '2', '3', '4'];
  String currentIds = 'ID de usuario';
  String mnombre = '';
  String mapellido = '';
  String mcorreo = '';

  void catchIds(String ids){
    this.currentIds = ids;
  }

  void modify(){
    this.modified = true;
  }
}
