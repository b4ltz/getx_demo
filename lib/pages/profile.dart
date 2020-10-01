import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/models/products.dart';

class Profile extends StatelessWidget {
  final Product product = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.productName}')),
    );
  }
}
