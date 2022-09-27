import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';

import 'main_login_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              height: appBarHeight * 2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text("더보기",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              ),
            ),
            //공지사항, 활용 안내 , 고객센터, 약관 및 정책
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("공지사항",style: TextStyle(fontSize: 22)),
                    rightArrow,
                  ],
                )
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              height: 1,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("활용안내",style: TextStyle(fontSize: 22)),
                    rightArrow,
                  ],
                )
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              height: 1,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("고객센터",style: TextStyle(fontSize: 22)),
                      rightArrow,
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              height: 1,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("약관 및 정책",style: TextStyle(fontSize: 22)),
                      rightArrow,
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              height: 1,
            ),

          ],
        )
      ),
    );
  }
}
