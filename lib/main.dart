import 'package:allaboutflutter/flutter_in_action/count_app.dart';
import 'package:allaboutflutter/screen/CoupleHomeScreen.dart';
import 'package:allaboutflutter/screen/HomeScreen.dart';
import 'package:allaboutflutter/Idol.dart';
import 'package:allaboutflutter/screen/chapter_eight.dart';
import 'package:allaboutflutter/screen/pageview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color:Colors.orange,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Image.asset('assets/logo.png',),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.white,
                )
              )
            ],
          )
        )
      ),
    );
  }
}

class ColumnWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                height: 50.0,
                width:50.0,
                color: Colors.red,
              ),

              const SizedBox(width: 12.0),
              Container(
                height:50.0,
                width: 50.0,
                color:Colors.green,
              ),
              const SizedBox(width: 12.0),
              Container(
                height:50.0,
                width:50.0,
                color:Colors.blue,
              )
            ],
          )
        )
      )
    );
  }
}

class RowWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                height:50.0,
                width:50.0,
                color:Colors.red
              ),

              const SizedBox(width: 12.0),
              Container(
                height:50.5,
                width:50.0,
                color:Colors.green,
              ),
              const SizedBox(width: 22.0),
              Container(
                height: 50.0,
                width: 50.0,
                color:Colors.blue,
              )
            ],
          )
        )
      )
    );
  }
}

class PaddingWidgetEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(
            100.0,
          ),
           child: Container(
             color:Colors.red,
             width: 50.0,
             height: 50.0,)
          ),
        ),
      );
  }
}
class SizedBoxEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : SizedBox(
        height: 200.0,
        width: 200.0,
        child:Container(
          color: Colors.red,
        )
      )
    );
  }
}

class ContainerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  width:50.0,
                  color:Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0
                ),
              ),
              height:199.0,
              width: 99.0
          )
      );
  }
}

class FloatingActionButtonEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('KEG onPressed FloatingActionBtn');
          },
          child: Text('클릭'),

        ),
        body: Container(),
      )
    );
  }
}

