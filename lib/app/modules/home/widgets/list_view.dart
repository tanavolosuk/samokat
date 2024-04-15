import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_shop_box.dart';
import 'package:samokat/app/modules/home/home_controller.dart';
import 'package:samokat/app/modules/home/widgets/button_count.dart';

myListView(HomeController controller, int count) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            controller.selections[count].name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color.fromRGBO(64, 64, 64, 1),
            ),
          ),
          Row(
            children: [
              const Text(
                'Больше',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color.fromRGBO(64, 64, 64, 1),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              MaterialButton(
                onPressed: () {},
                color: const Color.fromRGBO(242, 242, 242, 1),
                padding: const EdgeInsets.all(8),
                shape: const CircleBorder(),
                height: 20,
                minWidth: 20,
                child: const Text(
                  '>',
                  style: TextStyle(
                      fontSize: 10,
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.selections[count].products.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var product = controller.selections[count].products[index];
            //final countProduct = controller.productCounts[product];
            return Container(
              width: 110,
              height: 120,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 0.01,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    // Получаем доступ к текущему количеству продукта
                    final countProduct = controller.productCounts[product];
                    if (countProduct != null && countProduct.value > 0) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              //padding: EdgeInsets.all(4),
                              alignment: Alignment.center,
                              child: Text(
                                '${countProduct.value}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ); // Возвращаем пустой контейнер, если количество равно 0
                    }
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(64, 64, 64, 1),
                          ),
                        ),
                        Text(
                          product.weight,
                          style: const TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        Obx(() {
                          final productCount =
                              controller.productCounts[product];
                          return Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  productCount != null && productCount.value > 0
                                      ? const Color.fromRGBO(255, 51, 95, 1)
                                      : const Color.fromRGBO(242, 242, 242, 1),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: button(
                              () {
                                shopBox.remove(product);
                                shopBox.add(product);
                                controller.getSumm();
                                controller.decreaseCount(product);
                                controller.getCountforWidget(product);
                              },
                              () {
                                shopBox.add(product);
                                shopBox.remove(product);
                                controller.getSumm();
                                controller.increaseCount(product);
                                controller.getCountforWidget(product);
                              },
                              '${product.price}',
                              controller,
                              productCount ?? RxInt(0),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
