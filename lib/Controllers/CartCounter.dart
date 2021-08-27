import 'package:get/get.dart';
import 'package:kliene/models/Clothes.dart';

class CartCounter extends GetxController {
  var count = 1.obs;
  var total = clothesdetails[0].price.obs;
  void increment() {
    count++;
    total = total + clothesdetails[0].price;
  }

  void decrement() {
    count--;
    total = total - clothesdetails[0].price;
  }
}
