import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';

class DibsItemWidget extends StatelessWidget {
  const DibsItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Container(
            width: screenSize.width,
            height: screenSize.height * 0.12,
            color: Colors.transparent,
            child: Row(
              children: [
                Padding(
                  //제품 이미지
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    height: screenSize.height * 0.12,
                    width: screenSize.height * 0.12,
                    //이미지
                    child: FittedBox(child: Image.network(category_test[0])),
                  ),
                ),
                Container(
                  //구분선
                  width: 0.4,
                  height: screenSize.height * 0.12,
                  color: Colors.grey,
                ),
                //제품 이름, 가격 등의 정보
                Padding(
                  padding: const EdgeInsets.only(left : 18.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //노트명
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            "고2 물리 열역학 정리본",
                            style: TextStyle(fontSize: 19),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      //판매자명
                      Expanded(
                        flex:2,
                        child: Container(
                          child: Text(
                            "물리 천재 전길원",
                            style: TextStyle(fontSize: 15),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),


                      //가격
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan( text : '₩  ',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 13,color:Colors.blueAccent)),
                                TextSpan( text : '5000',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17,color: Colors.black)),
                                TextSpan( text : ' 원',style: TextStyle(fontSize: 17,color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Utils().divider(),
      ],
    );
  }
}
