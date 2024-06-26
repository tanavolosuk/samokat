import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/modules/home/widgets/list_view.dart';
import 'package:samokat/app/modules/home/widgets/category_fields.dart';
import 'package:samokat/app/modules/home/widgets/search.dart';
import 'package:samokat/app/routes/app_pages.dart';
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
              Obx(() => categoryFields(controller)),
              const SizedBox(
                height: 24,
              ),
              Obx(() => ListView.builder(
                    itemCount: controller.selections.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return myListView(controller, index);
                    },
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Obx(
        () => controller.summ.value == 0
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                child: SizedBox(
                  width: 80,
                  height: 35,
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.offNamed(Routes.ORDER);
                    },
                    backgroundColor: const Color.fromRGBO(255, 51, 95, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${controller.summ}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          '15 минут',
                          style: TextStyle(
                              fontSize: 9,
                              color: Color.fromARGB(255, 255, 153, 175),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
