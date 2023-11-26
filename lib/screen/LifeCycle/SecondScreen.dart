import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('KEG Second createState');
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("KEG Secon build");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
      onPressed: (){
        Navigator.pop(context);
      },
      )
      )
    );
  }

  @override
  void initState() {
    print('KEG Second initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('KEG Second didChangeDependencies');
  }

  /*
      mounted는 위젯이 위젯트리에 마운트 되었는지(화면에 표시되었는지) 나타낸다.
   */

  @override
  void dispose() {
    print('KEG Second dispose');
  }

  @override
  void activate() {
    print('KEG Second active');
  }

  @override
  void deactivate() {
    print('KEG Second deactivate');
  }

  @override
  void setState(VoidCallback fn) {
    print('KEG Second setState');
  }

  @override
  void reassemble() {
    print('KEG reassemble');
  }




}