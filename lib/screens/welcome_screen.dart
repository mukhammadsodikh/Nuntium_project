import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/screens/category_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return  Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Column(
            children:  [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/welcome.png',
                height: 500,
                fit: BoxFit.cover,
              ),

              const Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Nuntium',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    Text(
                      'All news in one place',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(height: 30),
                  ],

                ),
              ),
              const SizedBox(height: 100),
              Hero(
                tag: "Get Started",
                child: Container(
                  width: 336,
                  height: 56,
                  margin: const EdgeInsets.only(top: 50, left: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return CategoriesScreen(
                              onClick: (Category category) {},
                            );
                          },

                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "next".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],

          ),

        ),


      ),


    );
  }
}
