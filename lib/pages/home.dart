import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/bloc/utility.dart';
import 'package:getx_demo/models/products.dart';
import 'package:getx_demo/provider/controller.dart';

class Home extends StatelessWidget {
  final c = Get.find<Utility>();
  @override
  Widget build(BuildContext context) {
    print('x');
    return Scaffold(
      appBar: AppBar(title: Text('${c.sample}')),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Get.toNamed(
                  '/profile',
                  arguments: Product(productName: 'HELLO WORLD'),
                  // arguments: ,
                );
              },
              child: Text('GO TO NEXT PAGE'),
              color: Colors.blue,
            ),
            // MaterialButton(
            //   onPressed: () {
            //     c.increment();
            //   },
            //   child: Obx(() {
            //     print('Button 1 Rebuild; Count ${c.count}');
            //     return Text('Count ${c.count}');
            //   }),
            //   color: Colors.blue,
            // ),
            // MaterialButton(
            //   onPressed: () {
            //     c.increment2();
            //   },
            //   child: Obx(() {
            //     print('Button 2 Rebuild; Count ${c.count2}');
            //     return Text('Count2 ${c.count2}');
            //   }),
            //   color: Colors.blue,
            // ),
          ],
        ),
      ),
    );
  }
}
