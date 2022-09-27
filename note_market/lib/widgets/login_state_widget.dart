import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_market/screens/main_login_screen.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';

class LoginStateWidget extends StatefulWidget with PreferredSizeWidget {
  LoginStateWidget({Key? key})
      : preferredSize = const Size.fromHeight(appBarHeight),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  State<LoginStateWidget> createState() => _LoginStateWidgetState();
}

class _LoginStateWidgetState extends State<LoginStateWidget> {

  void update() {
    return setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isLogined = FirebaseAuth.instance.currentUser != null;
    Size screenSize = Utils().getScreenSize();
    return Container(
        height: appBarHeight,
        width: double.infinity,
        child: isLogined ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text("${FirebaseAuth.instance.currentUser?.email}",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_circle_right_outlined),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  FirebaseAuth.instance.signOut();
                  update();
                });
              },
              icon: Icon(Icons.logout_outlined),
            ),
          ],
        ) : GestureDetector(
          onTap: (){
            Get.to(()=>MainLoginScreen());
          },
          child: Container(
            child: Row(children: [
              SizedBox(
                width: 20,
              ),
              Text("로그인해 주세요",
                  style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_circle_right_outlined),
            ],),
          ),
        ));
  }
}

/*
widget.isLogined
? Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Row(
children: [
SizedBox(
width: 20,
),
Text("${FirebaseAuth.instance.currentUser?.email}",
style: TextStyle(
fontWeight: FontWeight.w500, fontSize: 24)),
SizedBox(
width: 10,
),
Icon(Icons.arrow_circle_right_outlined),
],
),
IconButton(
onPressed: () {
setState(() {
FirebaseAuth.instance.signOut();
});
},
icon: Icon(Icons.logout),
),
],
)
: GestureDetector(
onTap: () {
Get.to(() => MainLoginScreen(), transition: Transition.fadeIn);
},
child: Container(
child: Row(
children: [
SizedBox(
width: 20,
),
Text("로그인해 주세요",
style: TextStyle(
fontWeight: FontWeight.w500, fontSize: 24)),
SizedBox(
width: 10,
),
Icon(Icons.arrow_circle_right_outlined),
],
),
),
),*/
