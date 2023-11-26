import 'package:allaboutflutter/screen/LifeCycle/SecondScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('KEG createState');
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open route"),
          onPressed: () {
            Navigator.push(context , MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        )
      )
    );
  }

  @override
  void initState() {
    print('KEG FirstScreen initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('KEG FirstScreen didChangeDependencies');
  }

  /*
      mounted는 위젯이 위젯트리에 마운트 되었는지(화면에 표시되었는지) 나타낸다.
   */

  @override
  void dispose() {
    print('KEG FirstScreen dispose');
  }

  @override
  void activate() {
    print('KEG FirstScreen active');
  }

  @override
  void deactivate() {
    print('KEG FirstScreen deactivate');
  }

  @override
  void setState(VoidCallback fn) {
    print('KEG FirstScreen setState');
  }

  @override
  void reassemble() {
    print('KEG FirstScreen reassemble');
  }




}