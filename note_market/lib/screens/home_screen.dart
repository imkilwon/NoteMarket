import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/widgets/banner_widget.dart';
import 'package:note_market/widgets/item_showcase_list_view.dart';
import 'package:note_market/widgets/menu_horizontal_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("HomeScreen")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //배너 위젯 위에 채울거 생각하기
              BannerWidget(),
              //광고, 홍보, 이벤트 배너
              MenuHorizontalListView(),
              //국어, 영어, 수학, 과탐, 사탐 메뉴로 들어가는 버튼
              ItemShowCaseListView(title: "인기 국어 노트", children: Delete_item_showcase_test),
              ItemShowCaseListView(title: "인기 수학 노트", children: Delete_item_showcase_test),
              ItemShowCaseListView(title: "인기 영어 노트", children: Delete_item_showcase_test),
              ItemShowCaseListView(title: "인기 과탐 노트", children: Delete_item_showcase_test),
              ItemShowCaseListView(title: "인기 사탐 노트", children: Delete_item_showcase_test),
            ],
          ),
        ));
  }
}
