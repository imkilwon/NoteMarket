import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  //controller 생성
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController sexController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cloud test"),
      ),
      body: Column(
        children: [
          //정보 입력을 받을 수 있게 텍스트 필드 이용
          TextField(
            decoration: InputDecoration(
              hintText: "이름",
            ),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "나이",
            ),
            controller: ageController,
            keyboardType: TextInputType.number,
            //나이를 입력받기 위해 keyBoardType을 숫자판으로 설정한다.
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "성별",
            ),
            controller: sexController,
          ),
          //유저 정보 생성 버튼
          GestureDetector(
            onTap: () {
              final name = nameController.text;
              final age = int.parse(ageController.text);
              //int.parse()를 이용하여 ()안에 들어있는 문자열을 int자료형으로 바꿈
              final sex = sexController.text;

              createUser(name: name, age: age, sex: sex);
              //createUser에 이름, 나이 , 성별을 전달
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text("유저 정보 생성"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //createUser 기능 구현
  Future createUser(
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
}
