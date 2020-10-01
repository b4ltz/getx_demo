import 'package:get/get.dart';

// import 'package:getx_demo/models/products.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var count2 = 1.obs;

  void increment() => count++;

  void decrement() => count--;

  void increment2() => count2++;
}
