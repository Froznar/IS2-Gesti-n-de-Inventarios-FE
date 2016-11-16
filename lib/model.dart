library logistic_ui.model;

import 'package:dartson/dartson.dart';
import 'package:intl/intl.dart';

@Entity()
class ApplicationInfo {
  String name;
  String version;
  ApplicationBuildInfo buildInfo;
  ApplicationInfo({this.name, this.version, this.buildInfo});
}

@Entity()
class ApplicationBuildInfo {
  static final DateFormat _formatter = new DateFormat("yyyy-MM-dd HH:mm:ss");
  String revision;
  String branch;
  DateTime buildTime;
  String get formattedBuildTime => _formatter.format(buildTime);
  int get year => buildTime.year;
  ApplicationBuildInfo({this.revision, this.branch, this.buildTime});
}

@Entity()
class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String get name => "$firstName $lastName";
}

@Entity()
class ProductSales {
  int idProduct;
  String name;
  int  price;
  int  quantity;
  static final DateFormat _formatter = new DateFormat("yyyy-MM-dd HH:mm:ss");
  bool avaible;
  String productType;
  String get data => "$name $price";
  ProductSales({this.idProduct,this.name,this.price, this.quantity, this.productType});

}


@Entity()
class ProductOut
{
  String name;
  int quantity;
  String receiver;
  String phone;

  ProductOut({this.name, this.quantity, this.receiver, this.phone});

}

@Entity()
class UserProvider {
  int idProvider;
  String nameProvider;
}

/*@Entity()
class Proveedor {
  int id_proveedor;
  String name_proveedor;
}*/


/*
@Entity()
class Product
{

  int idProduct;
  String name;
  int price;
  int quantityEntry;
  int quantityOut;
  int stack;
  static final DateFormat _formatter = new DateFormat("yyyy-MM-dd HH:mm:ss");
  String productType;
  String receiver;
  String phone;

  Product(this.idProduct, this.name, this.price, this.quantityEntry, this.quantityOut,this.stack, this.productType, this.receiver, this.phone);
}
*/
