import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';
import 'package:note_market/widgets/login_state_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: LoginStateWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7.0, bottom: 20.0),
                child: Container(
                  width: Utils().getScreenSize().width*0.9,
                  height: Utils().getScreenSize().height*0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //노트 페이 잔액
                        children: [
                          Text("노트 페이 잔액",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("얼마 있는데?",style: TextStyle(fontSize: 15,color: Colors.lightBlue),),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: Utils().getScreenSize().height*0.04,
                        color: Colors.grey,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //쿠폰
                        children: [
                          Text("쿠폰",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("몇 개 있는데?",style: TextStyle(fontSize: 15,color: Colors.lightBlue),),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: Utils().getScreenSize().height*0.04,
                        color: Colors.grey,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //리뷰 작성
                        children: [
                          Text("리뷰",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("왜 안 썼는데?",style: TextStyle(fontSize: 15,color: Colors.lightBlue),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Utils().divider(),
              _Menu(menuName: "구매한 노트"),
              Utils().divider(),
              _Menu(menuName: "판매중인 노트"),
              Utils().divider(),
              _Menu(menuName: "찜한 노트"),
              Utils().divider(),
              _Menu(menuName: "최근 본 노트"),
              Utils().divider(),
              _Menu(menuName: "선물함"),
              Utils().divider(),
              _Menu(menuName: "관심 노터"),
              Utils().divider(),
              _Menu(menuName: "고객센터 문의 내역"),
            ],
          ),
        ),
      ),
    );
  }
}


class _Menu extends StatelessWidget {
  final String menuName;
  const _Menu({Key? key , required this.menuName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: appBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "${menuName}",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:rightArrow,
          ),
        ],
      ),
    );
  }
}
