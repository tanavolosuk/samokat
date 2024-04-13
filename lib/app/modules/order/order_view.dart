import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_shop_box.dart';
import 'package:samokat/app/data/models/product.dart';
import 'package:samokat/app/modules/home/widgets/button_count.dart';
import 'package:samokat/app/modules/home/widgets/hefgh.dart';
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
                  return ListTile(
                    minLeadingWidth: 100,
                    leading:
                        // Container(
                        //   height: 1000,
                        //   width: 100,
                        //   child:
                        ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    //),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(64, 64, 64, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          product.weight,
                          style: const TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    subtitle:
                        // knopka(),
                        // );

                        Container(
                      height: 25,
                      width: 80,
                      child: CustomButton(
                        value: count,
                        onPressedMinus: () {
                          shopBox.remove(product);
                          controller.getSumm();
                          controller.getCount();
                        },
                        onPressedPlus: () {
                          shopBox.add(product);
                          controller.getSumm();
                          controller.getCount();
                        },
                      ),
                    ),
                    trailing: Text('${product.price} ₽'),
                  );
                },
              ),
            ),
            // const SizedBox(
            //   height: 50,
            // ),
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
