import 'dart:math';

import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_data_categories.dart';
import 'package:samokat/app/data/fakedata/fake_data_selection.dart';
import 'package:samokat/app/data/models/category.dart';
import 'package:samokat/app/data/models/selection.dart';

class FakeApiService extends GetxService {
  Future<List<Selection>> getProducts() async {
    await _randomDelay();
    return FakeSelection.selections;
  }

  Future<List<Category>> getCategories() async {
    await _randomDelay();
    return FakeCategories.categories;
  }

  Future<void> _randomDelay() async {
    var random = Random().nextInt(2000);
    return Future.delayed(Duration(milliseconds: random));
  }
}
