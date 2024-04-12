import 'package:samokat/app/data/fakedata/fake_data_product.dart';
import 'package:samokat/app/data/models/selection.dart';

abstract class FakeSelection {
  static List<Selection> selections = selectionsList;
}

List<Selection> selectionsList = [
  Selection('Выгодная полка', profitableShelf),
  // Selection('На любой случай'),
  // Selection('Для особого меню'),
  // Selection('К чаю и кофе'),
];