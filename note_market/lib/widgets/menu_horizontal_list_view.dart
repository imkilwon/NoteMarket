import 'package:flutter/material.dart';
import 'package:note_market/utils/constants.dart';

class MenuHorizontalListView extends StatelessWidget {
  const MenuHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 75,
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(category_test[index]),
                      ),
                      SizedBox(height: 5,),
                      Text(category_test_name[index]),
                    ],
                  ),
                ));
          },

        ),
      ),
    );
  }
}
