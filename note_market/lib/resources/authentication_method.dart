import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationMethods{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Future<String> signUpUser({required String email, required String password})async{
    email.trim();
    password.trim();

    String output = "Something went wrong";
    if ( email != "" && password != ""){
      try{
        await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
        //아이디랑 비밀번호 만들기 시도
      }
      catch(e){
        output = e.toString();
        //오류가 나오면 오류에 이렇게 표시
      }
    }else{
      //빈 공간 존재
      output = "빈 공간을 모두 채워주세요";
    }
    return output;
  }
}