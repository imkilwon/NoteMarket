import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/widgets/dibs_item_widget.dart';

class DibsScreen extends StatefulWidget {
  const DibsScreen({Key? key}) : super(key: key);

  @override
  State<DibsScreen> createState() => _DibsScreenState();
}

class _DibsScreenState extends State<DibsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "찜한 노트",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: backButton,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 19,
                itemBuilder: (context, index) {
                  return DibsItemWidget();
                },
              ),
            ),
          ],
        ));
  }
}
