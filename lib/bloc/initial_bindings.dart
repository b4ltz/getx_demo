import 'package:get/get.dart';
import 'package:getx_demo/bloc/utility.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Utility());
  }
}
