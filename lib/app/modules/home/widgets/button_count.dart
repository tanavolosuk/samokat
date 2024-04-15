import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/modules/home/home_controller.dart';

button(
  VoidCallback onPressedMinus,
  VoidCallback onPressedPlus,
  String value,
  HomeController controller,
  RxInt? countProduct, 
) {
  Color textColor = countProduct != null && countProduct.value != 0
      ? Colors.white
      : Colors.pink;
  return Container(
    width: 80,
    constraints: const BoxConstraints(
      maxWidth: 80.0,
      maxHeight: 25.0,
      minWidth: 80.0,
    ),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (countProduct != null &&
              countProduct.value != 0) 
            GestureDetector(
              onTap: onPressedMinus,
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 18,
              ),
            ),
          const SizedBox(
            width: 2,
          ),
          Text(
            value,
            style: TextStyle(
              color: textColor,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: onPressedPlus,
            child: Icon(
              Icons.add,
              color: textColor,
              size: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
