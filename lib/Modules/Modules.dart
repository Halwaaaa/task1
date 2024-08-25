import 'package:flutter/material.dart';
import 'package:task2/Models/FlowerDetalies.dart';
import 'package:task2/Models/Reviews.dart';
import 'package:task2/Models/bestseller.dart';
import 'package:task2/Models/productCard.dart';

List<Bestseller> bestsellerModules = [
  Bestseller(
      ImageName: 'images/Bestseller1.png',
      About: 'Faux Eyebrow leaf',
      Price: 38),
  Bestseller(
      ImageName: 'images/Bestseller2.png',
      About: 'Dendrobium Lasting Orchids',
      Price: 25),
  Bestseller(
      ImageName: 'images/Bestseller1.png',
      About: 'Faux Eyebrow leaf',
      Price: 38),
  Bestseller(
      ImageName: 'images/Bestseller2.png',
      About: 'Dendrobium Lasting Orchids',
      Price: 25),
];
List<String> ModulesFlowerFliter = [
  'Filter',
  'Best sellers',
  'Most Gifted',
  'Filter',
  'Best sellers',
  'Most Gifted',
  'Filter',
  'Best sellers',
  'Most Gifted',
];
List<String> ModulesProductCardImage = [
  'images/image1.png',
  'images/image2.png',
  'images/image3.png',
  'images/image4.png',
  'images/image5.png',
  'images/image6.png',
  'images/image7.png',
];

List<ProductCard> ModulesProductCardDetails = [
  ProductCard(
      priceProductCard: 12,
      nameProductCard:
          'Magnolia Bush               d                        dddd               ddd'),
  ProductCard(priceProductCard: 15, nameProductCard: '   Bliss Orchid'),
  ProductCard(priceProductCard: 25, nameProductCard: 'Cherry Blossom'),
  ProductCard(priceProductCard: 30, nameProductCard: 'White Orchid'),
  ProductCard(priceProductCard: 40, nameProductCard: 'Magnolia Flower'),
  ProductCard(priceProductCard: 37, nameProductCard: 'Collection of Zanbak'),
  ProductCard(priceProductCard: 40, nameProductCard: 'Lily'),
];
List<String> ModulesNameFlowerFliter = ['Lily', 'Roses ', 'Orchids', 'Daises '];
List<String> ModulesCategoryFlowerFliter = [
  'Perennials',
  'Annuals',
  'Bulbs',
  'Biennials',
  'Climbers',
  'Shrubs',
  'Succulents'
];
List<Color> ModulesColorFlowerFliter = [
  Colors.black,
  Colors.white,
  Colors.amber,
  Colors.black,
  Colors.blue,
  Colors.transparent,
  Colors.teal,
  Colors.red,
  Colors.black,
];
List<String> ModulesPriceFlowerFliter = [
  '10_30\$',
  '10_30\$',
  '10_30\$',
  '10_30\$',
  '10_30\$',
];
List<FlowerDetalies> ModulesFlowerSelectedInformation = [
  FlowerDetalies(
      Title: "Flower information",
      boby:
          'White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.'),
  FlowerDetalies(
      Title: 'How to Take care of it',
      boby:
          'Place your orchid in bright, indirect light and maintain a temperature between 65-75°F. Water weekly, allowing the medium to dry slightly, and maintain 50-70% humidity. Use orchid fertilizer monthly and repot every 1-2 years with specialized medium. Prune dead blooms and check regularly for pests to keep it healthy.Place your orchid in bright, indirect light and maintain a temperature between 65-75°F. Water weekly, allowing the medium to dry slightly, and maintain 50-70% humidity. Use orchid fertilizer monthly and repot every 1-2 years with specialized medium. Prune dead blooms and check regularly for pests to keep it healthy.Place your orchid in bright, indirect light and maintain a temperature between 65-75°F. Water weekly, allowing the medium to dry slightly, and maintain 50-70% humidity. Use orchid fertilizer monthly and repot every 1-2 years with specialized medium. Prune dead blooms and check regularly for pests to keep it healthy.')
];
List<Reviews> ModulesFlowerSelectedReviews = [
  Reviews(
      Date: "20/4/2024",
      UserName: "laith",
      Review: 'such a flower i love havig it in my living room  '),
  Reviews(Date: "20/4/2024", UserName: "laith", Review: 'glad i bought it  '),
];
List<List<Color>> ModulesFlowerSelectedStar = [
  [
    const Color.fromRGBO(219, 223, 66, 1),
    const Color.fromRGBO(219, 223, 66, 1),
    const Color.fromRGBO(219, 223, 66, 1),
    const Color.fromRGBO(219, 223, 66, 1),
  ],
  [
    const Color.fromRGBO(219, 223, 66, 1),
    const Color.fromRGBO(219, 223, 66, 1),
    const Color.fromRGBO(219, 223, 66, 1),
    Colors.white,
    Colors.white,
  ]
];
List<Widget> ModulesBouttonsOrder = [
  const Icon(Icons.plus_one),
  Image.asset('images/trash.png')
];
