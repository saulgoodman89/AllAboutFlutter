import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title:Text('Code Factory'),
            centerTitle: true,

              actions: [
                IconButton(onPressed: () {
                //  if(controller != null) {
               //     controller!.loadUrl('https://daum.net');
              //    }
                }, icon: Icon(
                  Icons.home,
                )
                )
              ],
          ),
         body: WebView(
           onWebViewCreated: (WebViewController controller) {

           },
          initialUrl: 'https://youtube.com',
           javascriptMode: JavascriptMode.unrestricted,
         )
        )
    );
  }
}