import 'package:angular2/angular2.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/request.dart';


const List<String> _products = const [
  'ProductoA',
  'ProductoB ',
  'ProductoC',
];

@Component(
    selector: 'product-sales-form',
    templateUrl: 'product_sales_form_component.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductSalesFormComponent {
  List<String> get products => _products;
  bool submitted = false;
  ProductSales model = new ProductSales(1,"Caja",100,17,_products[0]);
  onSubmit() {
    submitted = true;
  }
}
