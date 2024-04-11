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
                      // prefixIconConstraints:
                      //     BoxConstraints(minWidth: 10, minHeight: 100),
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
                              style: TextStyle(
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
                        color: Color.fromRGBO(242, 242, 242, 1),
                        padding: EdgeInsets.all(8),
                        shape: CircleBorder(),
                        height: 20,
                        minWidth: 20,
                        child: Text(
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
              
            ],
          ),
        ),
      ),
    );
  }
}
