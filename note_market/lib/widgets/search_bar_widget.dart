import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_market/utils/utils.dart';

import '../utils/constants.dart';

class SearchBarWidget extends StatelessWidget with PreferredSizeWidget {
  final bool hasBackButton;


  SearchBarWidget({Key? key,required this.hasBackButton}) : preferredSize = const Size.fromHeight(appBarHeight),super(key: key);

  @override
  final Size preferredSize;
  OutlineInputBorder border = OutlineInputBorder(
    //border의 속성을 자주사용하므로 border 옵션구성을 따로 빼서 border라는 변수로 만들었다.
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Container(
      height: appBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          hasBackButton ? IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios)) : Text("로고"),
          GestureDetector(
            onTap: (){
              //검색기능
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search_outlined),
              ),
              width: screenSize.width*0.5,
              height: appBarHeight*0.7,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Text("책장아이콘"),
          Icon(Icons.shopping_basket),
        ],
      ),
    );
  }

}


