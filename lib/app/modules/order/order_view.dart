import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:samokat/app/modules/order/widgets/collection.dart';
import 'package:samokat/app/modules/order/widgets/header.dart';
import 'package:samokat/app/routes/app_pages.dart';

import 'order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header(),
            //TODO ЛИСТ ПРОДУКТОВ
            const SizedBox(
              height: 50,
            ),
            collection(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Итого',
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    '2569 ₽',
                    style: TextStyle(
                        color: Color.fromRGBO(64, 64, 64, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.offNamed(Routes.HOME);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 51, 95, 1),
                        minimumSize: Size(250, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Оплатить',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      )),
                  const SizedBox(height: 16,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
