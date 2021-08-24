import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Mysp3Web extends StatefulWidget {
  const Mysp3Web({ Key key }) : super(key: key);

  @override
  _Mysp3WebState createState() => _Mysp3WebState();
}

class _Mysp3WebState extends State<Mysp3Web> {
   WebViewController _controller;

  goBack()async{
    if(await _controller.canGoBack()){
      await _controller.goBack();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back)), 
      ],),
      body: WebView(
          initialUrl: "https://mysp3.life/",
          javascriptMode: JavascriptMode.unrestricted,
          
        ),
    );
  }
}