import 'package:flutter/material.dart';
import 'package:note_market/utils/utils.dart';

class BookShelfScreen extends StatelessWidget {
  const BookShelfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "책장",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                  ],
                ),
              ),
              Utils().divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                  ],
                ),
              ),
              Utils().divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                  ],
                ),
              ),
              Utils().divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                  ],
                ),
              ),
              Utils().divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BookInform(
                      noteName: "kilwonasfsadgjdsajgnasdjkgnadjks",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                    BookInform(
                      noteName: "kilwon",
                    ),
                  ],
                ),
              ),
              Utils().divider(),
            ],
          ),
        )),
      ),
    );
  }
}

class BookInform extends StatelessWidget {
  final String noteName;

  const BookInform({Key? key, required this.noteName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: screenSize.width * 0.3,
          height: screenSize.height * 0.2,
          color: Colors.blue,
          child: Text("표지 이미지"),
        ),
        Container(
          alignment: Alignment.center,
            width: screenSize.width * 0.25,
            child: Text(
          "${noteName}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )),
      ],
    );
  }
}
