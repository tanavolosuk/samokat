import 'package:samokat/app/data/models/category.dart';

abstract class FakeCategories {
  static List<Category> categories = categoriesList;
}

List<Category> categoriesList = [
  Category(
      'https://cm.samokat.ru/processed/category/40c493a9-f765-407e-aa49-8eda265f1054.jpg',
      'На завтрак'),
  Category(
      'https://cm.samokat.ru/processed/category/0cf2e5af-97a9-4e7e-bdac-95c294cde41a.jpg',
      'Сытный обед'),
  Category(
      'https://cm.samokat.ru/processed/category/86885db4-6da3-4b27-8f15-bd13438f3157.jpg',
      'Для уютного\nвечера'),
  Category(
      'https://cm.samokat.ru/processed/category/2577cd43-edb8-494a-a114-9e6b1f2848a4.jpg',
      'На перекус'),
  Category(
      'https://cm.samokat.ru/processed/category/ccda71f7-8257-42bb-98b4-0381d1b7ae25.jpg',
      'Можно в пост'),
  Category(
      'https://cm.samokat.ru/processed/category/88a5fa26-8011-415c-8533-0389190ac964.jpg',
      'Порадовать\nсебя весной'),
  Category(
      'https://cm.samokat.ru/processed/category/384a1d50-915b-4c4b-9a27-b6103ced82ca.jpg',
      'Хочется\nсладкого'),
  Category(
      'https://cm.samokat.ru/processed/category/9ea5ad9b-0682-4462-92c5-2f19fa766a1f.jpg',
      'Сейчас сезон'),
  Category(
      'https://cm.samokat.ru/processed/category/480f1901-a299-4e97-b4ad-428ab972d314.jpg',
      'Из других\nстран'),
];
