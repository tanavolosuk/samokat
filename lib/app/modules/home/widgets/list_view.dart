import 'package:flutter/material.dart';
import 'package:samokat/app/modules/home/home_controller.dart';

MyListView(HomeController controller, int count) {
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
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
                        Text(
                          '${product.price} р',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
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
