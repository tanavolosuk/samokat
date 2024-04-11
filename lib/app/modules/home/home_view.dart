import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 6),
              Container(
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 18,
                        color: Color.fromRGBO(64, 64, 64, 1),
                      ),
                      hintText: 'Искать в Самокате',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(166, 166, 166, 1),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                '|',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(198, 194, 194, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.percent_rounded,
                                size: 16,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Скидки',
                                style: TextStyle(
                                  color: Color.fromRGBO(64, 64, 64, 1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5.0),
                    ),
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GridView.builder(
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
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Выгодная полка',
                    style: TextStyle(
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
              Container(
                width: 150,
                margin: EdgeInsets.all(8),
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
                        borderRadius: BorderRadius.circular(
                            15), // Устанавливаем радиус скругления для изображения
                        child: Image.network(
                          'https://cm.samokat.ru/processed/l/public/40a40ea63defea6a_4680115880269-1.jpg',
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
                            'Колбаса',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '20 г',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '199 р',
                            style: TextStyle(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
