import 'dart:async';
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
                        ),
                      ),
                    ),
                    Text(
                      'All news in one place',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],

                ),
              ),
              const SizedBox(height: 100),
              Hero(
                tag: "login_btn",
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CategoriesScreen()));

                  },
                  child: Text(
                    "Get Started".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                ),
              ),
            ],

          ),

        ),


      ),


    );
  }
}
