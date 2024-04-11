import 'package:get/get.dart';
import 'package:samokat/app/data/models/products/product.dart';

class HomeController extends GetxController {
  List<String> images = [
    'https://cm.samokat.ru/processed/category/40c493a9-f765-407e-aa49-8eda265f1054.jpg',
    'https://cm.samokat.ru/processed/category/0cf2e5af-97a9-4e7e-bdac-95c294cde41a.jpg',
    'https://cm.samokat.ru/processed/category/86885db4-6da3-4b27-8f15-bd13438f3157.jpg',
    'https://cm.samokat.ru/processed/category/2577cd43-edb8-494a-a114-9e6b1f2848a4.jpg',
    'https://cm.samokat.ru/processed/category/ccda71f7-8257-42bb-98b4-0381d1b7ae25.jpg',
    'https://cm.samokat.ru/processed/category/88a5fa26-8011-415c-8533-0389190ac964.jpg',
    'https://cm.samokat.ru/processed/category/384a1d50-915b-4c4b-9a27-b6103ced82ca.jpg',
    'https://cm.samokat.ru/processed/category/9ea5ad9b-0682-4462-92c5-2f19fa766a1f.jpg',
    'https://cm.samokat.ru/processed/category/480f1901-a299-4e97-b4ad-428ab972d314.jpg',
  ];

  List<String> texts = [
    'На завтрак',
    'Сытный обед',
    'Для уютного\nвечера',
    'На перекус',
    'Можно в пост',
    'Порадовать\nсебя весной',
    'Хочется\nсладкого',
    'Сейчас сезон',
    'Из других\nстран',
  ];

  List<Product> products = [
    Product(
        name: 'Варёная колбаса\nВязанка, Сливушка',
        imageUrl:
            'https://cm.samokat.ru/processed/l/public/40a40ea63defea6a_4680115880269-1.jpg',
        weight: '375 г',
        price: 149),
    Product(
        name: 'Авокадо хасс Артфрут',
        imageUrl:
            'https://cm.samokat.ru/processed/l/product_card/c51c9e44-3a65-4ebb-bd93-c458ed990eb7.jpg',
        weight: '2 шт',
        price: 199),
    Product(
        name: 'Сосиски Самокат, из\nкуриной грудки',
        imageUrl:
            'https://cm.samokat.ru/processed/l/product_card/09db9484-7ae9-4c6e-b9f0-06812d6b6fb8.jpg',
        weight: '400 г',
        price: 179),
    Product(
        name: 'Творожный сыр\nСамокат, 60%',
        imageUrl:
            'https://cm.samokat.ru/processed/l/product_card/1694417323-4680012924264-1-2.jpg',
        weight: '130 г',
        price: 99)
  ];
}
