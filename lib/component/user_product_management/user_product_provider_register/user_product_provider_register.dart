import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';



@Component(selector: 'user-product-provider-register', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'user_product_provider_register.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserProductProviderRegister {

  void addProvider(){

  }
}
