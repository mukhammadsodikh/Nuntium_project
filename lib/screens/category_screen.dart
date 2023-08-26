import 'package:flutter/material.dart';

import '../globals/global_colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Categories'),

        backgroundColor: GlobalColors.mainColor,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.8,
        children: [
          myGridContainer('Sports', context),
          myGridContainer('Politics', context),
          myGridContainer('Life', context),
          myGridContainer('Gaming', context),
          myGridContainer('Animals', context),
          myGridContainer('Nature', context),
          myGridContainer('Food', context),
          myGridContainer('Art', context),
          myGridContainer('History', context),
          myGridContainer('Fashion', context)
        ],
      ),
    );
  }

  Widget myGridContainer(String content, BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      color: Colors.grey[200],
      child:  Text(content),
    );
  }
}
