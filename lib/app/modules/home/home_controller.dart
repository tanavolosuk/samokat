import 'package:get/get.dart';
import 'package:samokat/app/data/fakedata/fake_data_categories.dart';
import 'package:samokat/app/data/fakedata/fake_data_selection.dart';
import 'package:samokat/app/data/models/category.dart';
import 'package:samokat/app/data/models/selection.dart';
import 'package:samokat/app/data/services/fake_api_services.dart';

class HomeController extends GetxController {
  FakeApiService fakeApiService = Get.find();
  final selections = RxList<Selection>();

   @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  List<Category> categories = FakeCategories.categories;
  //List<Selection> selections = FakeSelection.selections;

  Future<void> getProducts() async {
    selections.value = await fakeApiService.getProducts(); 
  }
}
