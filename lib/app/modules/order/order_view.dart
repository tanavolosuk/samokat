import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:samokat/app/data/models/product.dart';
import 'package:samokat/app/modules/order/widgets/build_product_card.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            header(),
            Obx(
              () => ListView.builder(
                itemCount: controller.productQuantities.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  List<dynamic> productData =
                      controller.productQuantities[index];
                  Product product = productData[0];
                  int count = productData[1];
                  return buildProductCard(product, count, controller);
                },
              ),
            ),
            collection(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Obx(() => Column(
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
                      Text(
                        '${controller.summ.value} ₽',
                        style: const TextStyle(
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
                            backgroundColor: const Color.fromRGBO(255, 51, 95, 1),
                            minimumSize: const Size(250, 56),
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
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
