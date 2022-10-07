import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future createNoteWidget(
    //Future를 이용하여 비동기처리가 가능하게 만듦
        {required String name, required int age, required String sex}) async {

  //docUser라는 변수에 Firestore의 instance(객체)의 collection(컬렉션명)의 doc(document id)생성해서 넣어줍니다.
  //아래의 예시는 document id를 랜덤으로 생성하는 것이고 만약 id를 정해서 적고 싶다면 doc를 doc('원하는 id')로 바꿔주면 됩니다.
  final docUser = FirebaseFirestore.instance.collection('users').doc();

  final json = {
    //json에 key:value 형태의 데이터를 저장해줍니다.
    'name': name,
    'age': age,
    'sex': sex,
  };
  //docUser(doc id)에 json 파일을 set 합니다.
  await docUser.set(json);
}