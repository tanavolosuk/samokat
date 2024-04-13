import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_shop_box.dart';
import 'package:samokat/app/data/models/category.dart';
import 'package:samokat/app/data/models/product.dart';
import 'package:samokat/app/data/models/selection.dart';
import 'package:samokat/app/data/services/fake_api_services.dart';

class HomeController extends GetxController {
  FakeApiService fakeApiService = Get.find();
  final selections = RxList<Selection>();
  final categories = RxList<Category>();

  RxInt summ = 0.obs;

   @override
  void onInit() {
    getSelection();
    getProducts();
    super.onInit();
  }

  Future<void> getSelection() async {
    categories.value = await fakeApiService.getCategories();
  }

  Future<void> getProducts() async {
    selections.value = await fakeApiService.getProducts(); 
  }

  RxInt getSumm() {
    summ.value = 0;
    for (Product product in shopBox) {
      summ.value += product.price;
    }
    return summ;
  }
}
