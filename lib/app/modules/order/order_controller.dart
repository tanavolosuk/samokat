import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_shop_box.dart';
import 'package:samokat/app/data/models/product.dart';

class OrderController extends GetxController {
  RxInt summ = 0.obs;
  Map<Product, int> productCounts = {};
  final productQuantities = RxList<List<dynamic>>();
  RxInt count = 0.obs;

  @override
  void onInit() {
    getSumm();
    getCount();
    super.onInit();
  }

  void getCount() {
    productQuantities.clear();
    productCounts.clear();

    for (var product in shopBox) {
      if (productCounts.containsKey(product)) {
        productCounts[product] = productCounts[product]! + 1;
      } else {
        productCounts[product] = 1;
      }
    }

    productCounts.forEach((product, count) {
      productQuantities.add([product, count]);
    });
    print(productQuantities);
  }

  RxInt getSumm() {
    summ.value = 0;
    for (Product product in shopBox) {
      summ.value += product.price;
    }
    return summ;
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
