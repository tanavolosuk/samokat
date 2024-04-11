import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 6),
              Container(
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      14.0), // Задаем радиус скругления краев
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(
                          242, 242, 242, 1), // Цвет фона текстового поля
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Color.fromRGBO(64, 64, 64, 1),
                      ),
                      hintText: 'Искать в Самокате',
                      hintStyle: TextStyle(
                          fontSize: 13.5,
                          color: Color.fromRGBO(166, 166, 166, 1)),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                '|',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(198, 194, 194, 1)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.percent_rounded, size: 18,),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Скидки',
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 64, 64, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.all(5.0), // Отступы внутри текстового поля
                    ),
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
