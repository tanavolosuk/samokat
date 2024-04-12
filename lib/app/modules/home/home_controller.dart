import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_data_categories.dart';
import 'package:samokat/app/data/fakedata/fake_data_selection.dart';
import 'package:samokat/app/data/models/category.dart';
import 'package:samokat/app/data/models/selection.dart';

class HomeController extends GetxController {
  List<Category> categories = FakeCategories.categories;
  List<Selection> selections = FakeSelection.selections;
}
