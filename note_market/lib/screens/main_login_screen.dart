import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_market/screens/sign_in_screen.dart';
import 'package:note_market/screens/sign_up_screen.dart';
import 'package:note_market/utils/utils.dart';

class MainLoginScreen extends StatelessWidget {
  const MainLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonSize = 50;
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      body: Column(
        children: [
          //닫기 , 로고 , 카톡 시작, 페북 시작 , 구글 로그인, 이메일로 회원가입 , 이미 가입 하셨나요?
          Container(
            alignment: Alignment.bottomRight,
            width: double.infinity,
            height: screenSize.height / 10,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 18, 10),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  "닫기",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: screenSize.height / 2,
            child: Text("로고"),
          ),
          SizedBox(
            height: 10,
          ),

          Flexible(
            flex: 5,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellow,
                ),
                alignment: Alignment.center,
                width: screenSize.width * 0.8,
                height: buttonSize,
                child: const Text(
                  "카카오톡으로 시작하기",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: SizedBox(
                height: 150,
              )),
          Flexible(
            flex: 5,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                width: screenSize.width * 0.8,
                height: buttonSize,
                child: Text("페이스북으로 시작하기"),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 150,
            ),
          ),
          Flexible(
            flex: 5,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                    )),
                alignment: Alignment.center,
                width: screenSize.width * 0.8,
                height: buttonSize,
                child: Text("구글로 시작하기"),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: SizedBox(
                height: 150,
              )),
          Flexible(
            flex: 5,
            child: GestureDetector(
              onTap: () {
                Get.to(() => SignUpScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    )),
                alignment: Alignment.center,
                width: screenSize.width * 0.8,
                height: buttonSize,
                child: Text("이메일로 시작하기"),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: SizedBox(
                height: 150,
              )),

          Flexible(
            flex: 3,
            child: Container(
                alignment: Alignment.center,
                width: screenSize.width * 0.8,
                height: buttonSize,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("이미 가입하셨나요?  ", style: TextStyle(color: Colors.grey)),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignInScreen());
                      },
                      child: Text(
                        "로그인",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
