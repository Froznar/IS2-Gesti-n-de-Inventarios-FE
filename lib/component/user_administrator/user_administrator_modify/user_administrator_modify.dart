import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


@Component(
    selector: 'user-administrator-modify',
    templateUrl: 'user_administrator_modify.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserAdministratorModify implements OnInit{

  ApplicationService applicationService;

  Router router;
  UserAdministratorModify(ApplicationService this.applicationService) {}
  List<User> users;
  User userActive;
  User user;

  bool modify = false;
  int id;
  String first_name;
  String last_name;
  String email;
  String account;
  String password;
  String user_type;

  Future<Null> getUsers()  async {
    users = await applicationService.getUsers();
  }
  Future<List<User>> updateUsers() async {
    List<User> newUsers = await applicationService.getUsers();
    return newUsers;
  }

  void ngOnInit() {
    getUsers();
    getActiveUser(3);
  }

  Future<User> getActiveUser(id) async{
    userActive= await applicationService.getUser(id);
    this.id=userActive.id;
    this.first_name=userActive.first_name;
    this.last_name=userActive.last_name;
    this.email=userActive.email;
    this.account=userActive.account;
    this.password=userActive.password;
    if(userActive.user_type==1){
      this.user_type='Almacenero';
    }
    if(userActive.user_type==2){
      this.user_type='Administrador';
    }
    if(userActive.user_type==3){
      this.user_type='Vendedor';
    }
  }
  Future<Null> modifyUser(String first_name,String last_name,String email,String account,String password,String user_type,int id) async{
    int type;
    if(user_type=='Administrador'){
      type=2;
    }
    if(user_type=='Almacenero'){
      type=1;
    }
    if(user_type=='Vendedor'){
      type=3;
    }
    String datos = first_name + "-" + last_name + "-" + email + "-" + account +
        "-" + password + "-" + type.toString()+"-"+id.toString();
    print(datos);
    applicationService.updateUser(datos).then((User user) {});
    users = null;
    users = await updateUsers();
  }

}
