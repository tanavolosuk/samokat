import 'package:flutter/material.dart';
import 'package:samokat/app/data/models/product.dart';
import 'package:samokat/app/modules/order/order_controller.dart';
import 'package:samokat/app/modules/order/widgets/custom_button2.dart';

buildProductCard(Product product, int count, OrderController controller) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
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
    child: Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(64, 64, 64, 1),
                    ),
                  ),
                  Text(
                    product.weight,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton2(
                    value: count,
                    onPressedMinus: () {
                      controller.decreaseCount(product);
                    },
                    onPressedPlus: () {
                      controller.increaseCount(product);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Text(
            '${product.price * count} ₽',
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(64, 64, 64, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
