import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';
import 'package:note_market/widgets/text_field_widget.dart';

class NoteSellingScreen extends StatefulWidget {
  const NoteSellingScreen({Key? key}) : super(key: key);

  @override
  State<NoteSellingScreen> createState() => _NoteSellingScreenState();
}

class _NoteSellingScreenState extends State<NoteSellingScreen> {

  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final contentController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      appBar: AppBar(
        title: Text("노트 판매 글쓰기",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black)),
        toolbarHeight: appBarHeight,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: backButton,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: (){
              createNote(noteName: nameController.text, price: priceController.text, content:contentController.text );
            },
            child: Container(
              height: appBarHeight,
              width: 60,
              child: Center(child: Text("완료",style: TextStyle(fontSize:19,color: Colors.black),)),
            ),
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            //앱바 구분선
            Utils().divider(),

            //카메라 버튼
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.4),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.camera_alt_outlined,size:30,),
                        Text("0 / 10"),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //글 제목
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFieldWidget(label: "노트 이름", width: screenSize.width * 0.95, height: appBarHeight, controller: nameController, obscureText: false, hintText:"20자 이내로 입력해 주세요."),
            ),

            //가격
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFieldWidget(label: "가격", width: screenSize.width * 0.95, height: appBarHeight, controller: priceController, obscureText: false, hintText:"숫자만 입력해주세요."),
            ),

            //내용
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: contentController,
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: "노트 설명",
                  hintText: "허위나 과장없이 노트의 매력을 설명해주세요!\n(허위,과장이 입증될 시에 판매가 제한될 수 있습니다.)",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                  ),
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
  Future createNote({required String noteName, required String price, required String content}) async{
    final docNote = FirebaseFirestore.instance.collection('notes').doc('test');

    final noteJson = {
      'name' : noteName,
      'price' : price,
      'content' : content,
    };

    await docNote.set(noteJson);
  }
}
