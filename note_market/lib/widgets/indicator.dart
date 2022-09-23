import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  final bool isActive;

  const IndicatorDot({
    Key? key,
    required this.isActive,
    //isActive 를 꼭 입력하게 해라
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      //만약 Active 되면 cyan을 주고 아니면 grey
      color: isActive ? Colors.cyan : Colors.grey[400],
      width: 6,
      height: 3,
    );
  }
}
