import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/modules/home/home_controller.dart';

button(VoidCallback onPressedMinus, VoidCallback onPressedPlus, String value,
    HomeController controller, RxInt countProduct) {
  return Container(
        width: 80,
        constraints: const BoxConstraints(
          maxWidth: 80.0,
          maxHeight: 25.0,
          minWidth: 80.0,
        ),
        // decoration: BoxDecoration(
        //   color: countProduct > 0
        //       ? const Color.fromRGBO(255, 51, 95, 1)
        //       : const Color.fromRGBO(166, 166, 166, 1),
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (countProduct.value != 0)
                GestureDetector(
                  onTap: onPressedMinus,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                SizedBox(width: 2,),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 2,),
              GestureDetector(
                onTap: onPressedPlus,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      );
}
