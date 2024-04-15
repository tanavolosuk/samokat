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
  final productQuantities = RxList<List<dynamic>>();
  RxInt count = 0.obs;
  RxMap<Product, RxInt> productCounts = <Product, RxInt>{}.obs;


  @override
  void onInit() {
    getSelection();
    getProducts();
    super.onInit();
  }

  RxInt getCountforWidget(Product product) {
    count.value = productQuantities
      .where((item) =>
          item[0].name == product.name && item[0].weight == product.weight)
      .fold(0, (total, current) => total + (current[1] as int));
    return count;
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

  void getCount() {
  productCounts.clear();
  for (var product in shopBox) {
    if (productCounts.containsKey(product)) {
      productCounts[product]!.value++;
    } else {
      productCounts[product] = 1.obs;
    }
  }
}

  void increaseCount(Product product) {
    shopBox.add(product);
    getCount();
    getSumm();
  }

  void decreaseCount(Product product) {
    shopBox.remove(product);
    getCount();
    getSumm();
  }
}
