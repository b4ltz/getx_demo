import 'package:get/get.dart';

class Utility extends GetxController {
  var sample = RxInt().obs;
  // int sample;

  Future<Utility> init() async {
    await Future.delayed(Duration(seconds: 10));
    sample = Rx<RxInt>(RxInt(5));
    return this;
  }
}
