import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/modules/home/widgets/nine_fields.dart';
import 'package:samokat/app/modules/home/widgets/search.dart';
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
              search(),
              const SizedBox(
                height: 12,
              ),
              nineFields(controller),
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
                height: 500, // Задаем фиксированную высоту
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.products.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var product = controller.products[index];
                    return Container(
                      width: 110,
                      height: 120,
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
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(64, 64, 64, 1),
                                  ), 
                                ),
                                Text(
                                  product.weight,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Color.fromRGBO(166, 166, 166, 1),
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '${product.price} р',
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
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
     floatingActionButton: Align(
  alignment: Alignment.bottomRight,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
    child: Container(
      width: 80,
      height: 35, 
      child: FloatingActionButton(
        onPressed: () {  
        },
        child: Text('500', style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(255,51,95, 1),
      ),
    ),
  ),
),

    );
  }
}
