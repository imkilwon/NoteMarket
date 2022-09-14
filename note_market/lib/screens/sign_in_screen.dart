import 'package:flutter/material.dart';
import 'package:note_market/utils/utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인")
      ),
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.only(top : 20),
            child: Center(
              child: Container(
                //이메일, 비번 입력할 수 있는 박스
                width: screenSize.width * 0.9,
                height: screenSize.height*0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightBlueAccent.withOpacity(0.3),
                    width: 3,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //이메일 공간
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: screenSize.width * 0.85,
                        height: screenSize.height*0.05,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.lightBlueAccent.withOpacity(0.3),
                            width: 3,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    //비번
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: screenSize.width * 0.85,
                        height: screenSize.height*0.05,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.lightBlueAccent.withOpacity(0.3),
                            width: 3,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                  //비번 공간
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
