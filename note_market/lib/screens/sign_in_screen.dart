import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:note_market/resources/authentication_method.dart';
import 'package:note_market/screens/sign_up_screen.dart';
import 'package:note_market/utils/utils.dart';
import 'package:note_market/widgets/text_field_widget.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();


  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "로그인",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              //이메일 비번 입력하는 곳
              child: Container(
                //이메일, 비번 입력할 수 있는 박스
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //이메일 공간
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFieldWidget(
                          label: "이메일",
                          width: screenSize.width * 0.85,
                          height: screenSize.height * 0.06,
                          controller: emailController,
                          obscureText: false,
                          hintText: "이메일을 입력해주세요"),
                    ),
                    //비번
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFieldWidget(
                          label: "비밀번호",
                          width: screenSize.width * 0.85,
                          height: screenSize.height * 0.06,
                          controller: emailController,
                          obscureText: true,
                          hintText: "비밀번호를 입력해주세요"),
                    ),
                  ],
                ),
                //비번 공간
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          //로그인 버튼
          GestureDetector(
            onTap: () {
              //로그인 기능 집어넣기
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.lightBlueAccent.withOpacity(0.7),
              ),
              alignment: Alignment.center,
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.07,
              child: GestureDetector(
                onTap: () async{

                },
                child: Text(
                  "로그인",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 10,
              ),
              Text("비밀번호 재설정"),
              Text("|"),
              GestureDetector(
                onTap: (){
                  Get.to(()=>SignUpScreen());
                },
                child: Container(
                  child: Text(
                    "이메일 회원가입",
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
