import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:note_market/screens/account_screen.dart';
import 'package:note_market/screens/book_shelf_screen.dart';
import 'package:note_market/screens/home_screen.dart';
import 'package:note_market/screens/more_screen.dart';

const double appBarHeight =45;

Widget rightArrow = const Icon(Icons.keyboard_arrow_right_rounded);
Widget backButton = GestureDetector(onTap: (){Get.back();},child : Icon(Icons.arrow_back_ios ,color: Colors.black,));

List<Widget> screens = [
  const Center(child: HomeScreen()),
  const Center(child: BookShelfScreen()),
  const Center(child: AccountScreen()),
  const Center(child: MoreScreen()),
];

//url 테스트용
const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> category_test= [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];
const List<String> category_test_name = [
  "국어",
  "영어",
  "수학",
  "과탐",
  "사탐",
];

const List<Widget> Delete_item_showcase_test =[
  Text('hi'),
  Text('hi1'),
  Text('hi2'),
  Text('hi3'),
  Text('hi4'),
];