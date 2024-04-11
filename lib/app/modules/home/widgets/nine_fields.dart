import 'package:flutter/material.dart';
import 'package:samokat/app/modules/home/home_controller.dart';

nineFields(HomeController controller) {
  return GridView.builder(
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
    ),
    itemCount: controller.images.length,
    itemBuilder: (BuildContext context, int index) {
      var images = controller.images;
      var texts = controller.texts;
      return ClipRRect(
        borderRadius: BorderRadius.circular(14.0),
        child: Container(
          color: const Color.fromRGBO(242, 242, 242, 1),
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 4.0,
                left: 8.0,
                child: Text(
                  texts[index],
                  style: const TextStyle(
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
