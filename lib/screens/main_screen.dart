import 'package:flutter/material.dart';
import 'package:nuntium/globals/global_colors.dart';
import 'package:nuntium/screens/draver/main_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController _webViewController;
  bool isSearchVisible = false;
  final _queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        title: const Text("Nuntium App",style: TextStyle(fontSize: 22),),

      ),
      body: WebView(
          initialUrl: 'https://instedd.org/technologies/nuntium/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
        ),
      );
  }
}
