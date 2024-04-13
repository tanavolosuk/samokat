import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_shop_box.dart';
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
                      return MyListView(controller, index);
                    },
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: controller.summ.value != 0
          ? Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                child: SizedBox(
                  width: 80,
                  height: 35,
                  child: FloatingActionButton(
                    onPressed: () {
                      print(shopBox);
                      Get.offNamed(Routes.ORDER);
                    },
                    backgroundColor: const Color.fromRGBO(255, 51, 95, 1),
                    child: Obx(() => Text(
                          '${controller.summ}',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
            )
          : SizedBox(), // Если summ равно нулю, не отображать кнопку
    );
  }
}
