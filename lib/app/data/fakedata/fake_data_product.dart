import 'package:samokat/app/data/models/product.dart';

abstract class FakeDataClass {
  static List<Product> products = profitableShelf;
}

List<Product> profitableShelf = [
  Product(
      'Варёная колбаса\nВязанка, Сливушка',
      'https://cm.samokat.ru/processed/l/public/40a40ea63defea6a_4680115880269-1.jpg',
      '375 г',
      149),
  Product(
      'Авокадо хасс Артфрут',
      'https://cm.samokat.ru/processed/l/product_card/c51c9e44-3a65-4ebb-bd93-c458ed990eb7.jpg',
      '2 шт',
      199),
  Product(
      'Сосиски Самокат, из\nкуриной грудки',
      'https://cm.samokat.ru/processed/l/product_card/09db9484-7ae9-4c6e-b9f0-06812d6b6fb8.jpg',
      '400 г',
      179),
  Product(
      'Творожный сыр\nСамокат, 60%',
      'https://cm.samokat.ru/processed/l/product_card/1694417323-4680012924264-1-2.jpg',
      '130 г',
      99)
];