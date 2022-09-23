import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';
import 'package:note_market/utils/utils.dart';
import 'package:note_market/widgets/indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  Size screenSize = Utils().getScreenSize();
  int _currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: screenSize.height/5,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            itemBuilder: (context, index) => Image.network(largeAds[index]),
            onPageChanged: (value) {
              setState(() {
                _currentImage = value;
              });
            },
            itemCount: largeAds.length,
          ),
          Positioned(
            right : 20,
              child: Row(
            children: List.generate(largeAds.length, (index) => Padding(
              padding: EdgeInsets.all(3),
                child: IndicatorDot(isActive: index == _currentImage,),
              ))
            ,
          )),
        ],
      ),
    );
  }
}