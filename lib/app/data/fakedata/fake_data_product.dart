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

List<Product> forAnyOccasion = [
  Product(
      'Солёные огурцы\nСамокат',
      'https://cm.samokat.ru/processed/l/product_card/43dede78-e3f9-47c6-aafb-d819c4b62830.jpg',
      '300 г',
      149),
  Product(
      'Подгузники-трусики\nHuggies Elite Soft',
      'https://cm.samokat.ru/processed/l/public/8b76b0307b93462e_5029053549293.jpg',
      '48 шт',
      1199),
  Product(
      'Сыровяленая грудка\nиндейки Самокат',
      'https://cm.samokat.ru/processed/l/public/6213b8cb3e314437_4607056956754-1.jpg',
      '150 г',
      356),
  Product(
      'Из Грузии: Лимонад\nZandukeli, сода',
      'https://cm.samokat.ru/processed/l/product_card/026c9f81-49ab-4d76-acd4-342dafc2e923.jpg',
      '0.5 л',
      126),
];

List<Product> forBreackfast = [
  Product(
      'Овсяная каша Киты еды',
      'https://cm.samokat.ru/processed/l/public/ea87ab6a6fb706b8_4660020147534-1.jpg',
      '230 г',
      51),
  Product(
      'Рисовая каша Киты еды',
      'https://cm.samokat.ru/processed/l/public/54685755a770dc5c_4660020147527-1.jpg',
      '230 г',
      68),
  Product(
      'Запеканка Златоуст, с ванилью',
      'https://cm.samokat.ru/processed/l/product_card/ae6d1eac-2669-4094-a11f-4bfdb1e5e269.jpg',
      '160 г',
      130),
  Product(
      'Творожная запеканка Самокат',
      'https://cm.samokat.ru/processed/l/product_card/ca8861d1-46e4-4193-8a93-006cd1c1ddd0.jpg',
      '100 г',
      127),
];

List<Product> forTeaAndCoffee = [
  Product(
      'Батончик Самокат, с арахисовой пастой',
      'https://cm.samokat.ru/processed/l/product_card/19e5edc9-c628-4c57-a497-dcbea5b85b4e.jpg',
      '45 г',
      129),
  Product(
      'Батончики Snickers, Minis',
      'https://cm.samokat.ru/processed/l/public/042288a8a8ba9e74_4607065000073.jpg',
      '180 г',
      239),
  Product(
      'Молочный шоколад Milka, с печеньем Lu',
      'https://cm.samokat.ru/processed/l/public/f17b03ec87aa5320_7622210451255.jpg',
      '87 г',
      215),
  Product(
      'Батончик Самокат, шоколадный',
      'https://cm.samokat.ru/processed/l/product_card/abba2642-da10-4aa0-8047-10b70dd8df86.jpg',
      '45 г',
      183),
];
