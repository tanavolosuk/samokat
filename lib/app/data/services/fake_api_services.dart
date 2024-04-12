import 'dart:math';

import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_data_product.dart';
import 'package:samokat/app/data/models/product.dart';

class FakeApiService extends GetxService {
  Future<List<Product>> getProducts() async{
    await _randomDelay();
    return FakeDataClass.products;
  }

  Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }
}