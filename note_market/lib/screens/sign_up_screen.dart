import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:note_market/resources/authentication_method.dart';
import 'package:note_market/screens/sign_in_screen.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';
import 'package:note_market/widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordCheckController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();

  @override
  void dispose() {
    //이용이 끝났을 때, 메모리 삭제
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordCheckController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    Widget distance = SizedBox(height: 5);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: backButton
        ),
        title: Text(
          "회원가입",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
              SizedBox(height: 20),
          TextFieldWidget(
              label: "이메일",
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              controller: emailController,
              obscureText: false,
              hintText: "ex) NoteMarket@xxxx.com"),
          distance,
          TextFieldWidget(
              label: "비밀번호",
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              controller: passwordController,
              obscureText: true,
              hintText: "숫자,영문,특수문자를 포함하여 8~16자"),
          distance,
          TextFieldWidget(
              label: "비밀번호 확인",
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              controller: passwordCheckController,
              obscureText: true,
              hintText: "비밀번호를 동일하게 한 번 더 입력해주세요."),
          distance,
          TextFieldWidget(
              label: "닉네임",
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              controller: nameController,
              obscureText: false,
              hintText: "닉네임 입력(2 ~ 10자)"),
          distance,
          GestureDetector(
            onTap: () async {
              String output = await authenticationMethods.signUpUser(
                  email: emailController.text,
                  password: passwordController.text);
              if (output == "success") {
                Get.off(() => SignInScreen());
              } else {
                Utils().showSnackBar(context: context, content: output);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.lightBlueAccent,
              ),
              alignment: Alignment.center,
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.07,
              child: Container(
                child: Text(
                  "회원가입",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    ),)
    );
  }
}
