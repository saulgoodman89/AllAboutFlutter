import 'package:allaboutflutter/screen/LifeCycle/FirstScreen.dart';
import 'package:flutter/material.dart';


/*

KEG CheckLifeCycle createState
KEG CheckLifeCycle initState
KEG CheckLifeCycle didChangeDependencies
KEG CheckLifeCycleState build

KEG createState
KEG FirstScreen initState
KEG FirstScreen didChangeDependencies

KEG Second createState
KEG Second initState
KEG Second didChangeDependencies
KEG Secon build

// Second Screen에서
KEG Second deactivate
KEG Second dispose
 */
class CheckLifeCycle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('KEG CheckLifeCycle createState');
    return _CheckLifeCycleState();
  }
}

class _CheckLifeCycleState extends State<CheckLifeCycle> {
  @override
  Widget build(BuildContext context) {
    print('KEG CheckLifeCycleState build');
    // TODO: implement build
      return Scaffold(
        backgroundColor: Colors.green,
          appBar: AppBar(
            title: const Text("CheckLifeCycle Screen"),
          ),
          body: Center(
              child: ElevatedButton(
                child: const Text("Open route"),
                onPressed: () {
                  Navigator.push(context , MaterialPageRoute(builder: (context) => FirstScreen()));
                },
              )
          )
      );
  }

  @override
  void initState() {
    print('KEG CheckLifeCycle initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('KEG CheckLifeCycle didChangeDependencies');
  }

  /*
      mounted는 위젯이 위젯트리에 마운트 되었는지(화면에 표시되었는지) 나타낸다.
   */

  @override
  void dispose() {
    print('KEG CheckLifeCycle dispose');
  }

  @override
  void activate() {
    print('KEG CheckLifeCycle active');
  }

  @override
  void deactivate() {
    print('KEG  CheckLifeCycle deactivate');
  }

  @override
  void setState(VoidCallback fn) {
    print('KEG CheckLifeCycle setState');
  }

  @override
  void reassemble() {
    print('KEG CheckLifeCycle reassemble');
  }




}