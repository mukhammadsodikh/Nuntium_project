import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/list/gridview_list.dart';
import 'package:nuntium/screens/welcome_screen.dart';
import '../globals/global_colors.dart';
import 'main_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key, required this.onClick}) : super(key: key);

  final Function(Category category) onClick;

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<bool> isSelectedList = List.generate(8, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: GlobalColors.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    setState(() {
                      isSelectedList[index] = !isSelectedList[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelectedList[index] ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        modelsList[index].name,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          Hero(
            tag: "",
            child: Container(
              width: 336,
              height: 56,
              margin: EdgeInsets.only(top: 50, left: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Done",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
          ),
          ],
        ),
      ),
    );
  }
}
