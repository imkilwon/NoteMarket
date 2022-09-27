import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  Size getScreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }

  Widget divider(){
    return Container(
      height: 1.0,
      width: 500.0,
      color: Colors.grey[200],
    );
  }

  showSnackBar({required BuildContext context, required String content}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //snackBar를 이용하기 위해서는 ScaffoldMessenger의 showSnackBar를 이용해야 한다.
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Text(content,overflow: TextOverflow.ellipsis,maxLines: 1,)),
        ],
      ),
      duration: Duration(milliseconds: 1000),
      //스낵바의 지속 시간
      behavior: SnackBarBehavior.floating,
      //스낵바의 형태 ( fixed = 화면의 하단부와 연결되어 있는 형태, floating은 화면의 하단부 위에 떠 있는 형태)
      backgroundColor: Colors.lightBlueAccent,
      //스낵바의 배경색
      shape: RoundedRectangleBorder(
        //스낵바의 형태
        borderRadius: BorderRadius.circular(10.0),
        //스낵바의 4면을 둥글게 만듦
      ),
    ));
  }
}
