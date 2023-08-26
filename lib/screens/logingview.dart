// import 'package:flutter/material.dart';
// import 'package:nuntium/screens/social_login.dart';
//
// import '../globals/button_global.dart';
// import '../globals/global_colors.dart';
// import '../globals/text_form.dart';
// import '../globals/text_form_global.dart';
//
// class LoginView extends StatelessWidget {
//   LoginView({Key? key}) : super(key: key);
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 10),
//                 Text('Nuntium',
//                   style: TextStyle(
//                     color: GlobalColors.mainColor,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 20),
//                     const Text('Welcome Back 👋',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize:24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Text(
//                         'I am happy to see you again. You can'
//                             ' continue where you left off by logging in',
//                         style: TextStyle(
//                           color: Colors.grey[850],
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     ////email input++
//                     TextFormGlobal(
//                       controller: emailController,
//                       text: 'Email',
//                       obscure: false,
//                       textInputType: TextInputType.emailAddress,
//                       inputType: TextInputType.text,
//                     ),
//
//                     const SizedBox(height: 10),
//
//                     ////password input
//                     TextForm(controller: passwordController,
//                       text:'Password', textInputType: TextInputType.text,
//                       obscure: true, inputType: TextInputType.text,
//                     ),
//
//                     const SizedBox(height: 10),
//
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 25.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     const ButtonGlobal(),
//                     const SizedBox(height: 15),
//                     const SocialLogin(),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         height: 50,
//         color: Colors.white,
//         alignment: Alignment.center,
//
//       ),
//     );
//   }
// }
