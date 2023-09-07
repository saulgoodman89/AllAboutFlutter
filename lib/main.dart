import 'package:allaboutflutter/Idol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
  print('KEG hello world');

  /*
    var : 변수 , 값이 들어가면 자동으로 타입을 추론한다.
   */
  var name = 'KEG';
  print('KEG my name is '+name);

  /*
    dynamic : 변수의 타입이 고정되지 않아 다른 타입의 값을 저장 할 수 있다.
   */
  dynamic type = '코드팩토리';
  type = 1;
  print('KEG type : '+ type.toString());

  /*
    final / const
    final : 런타임 상수 , 코드가 실행  될 때 확정되면 final 사용
    const : 빌드타임 상수 , 코드를 실행하지 않은 상태에서 값이 확정되면 const 사용
   */
  final DateTime now = DateTime.now();
  print(now);

  // const DateTime cnow = DateTime.now(); 에러발생

  /*
    변수 타입
    var로 자동으로 변수 타입을 유추 할 수 있지만 , 직접적으로 변수타입을 명시해주면 코드가 더 직관적이라 유지보수가 편해진다.
   */
  String str = '코드 팩토리';
  int isInt = 10;
  double isDouble = 2.5;
  bool isTrue = true;

  print('KEG String : '+str);
  print('KEG isInt : '+ isInt.toString()); // String을 제외하고 toString 으로 변환해야한다.
  print('KEG Double : '+isDouble.toString());
  print('KEG bool : ' +isTrue.toString());

  /*
    List 여러 값을 순서대로 한 변수에 저장.
   */
  List<String> blackPinkList = ['리사','지수','제니','로제'];
  print('KEG blackPinkList : '+ blackPinkList.toString());
  print('KEG blackPinkList[0] : '+ blackPinkList[0]);
  print('KEG blackPinkList.length : '+ blackPinkList.length.toString());
  blackPinkList[3] = '코드팩토리';
  print('KEG blackPinkList : '+ blackPinkList.toString());

  /*
    where() 함수
    List에 있는 값들을 순서대로 순화 하면서 특정 조건에 맞는 값만 필터링.
   */

  final newList = blackPinkList.where((name) => name == '리사' || name == '지수',);
  print("KEG where()" + newList.toString());

  /*
    map() 함수
    List에 있는 값들을 순서대로 순회하면서 값을 변경
   */

  final newBlackPink = blackPinkList.map((name) => '블랙핑크 $name',);
  print('KEG map() : ' +newBlackPink.toString());

  /*
    null 관련
    변수타입이 null값을 가지는지 여부를 지정해야한다.
    타입 뒤에 ?를 추가해야 null값이 저장 될 수 있다.
   */

  double? number;
  print('KEG null op: ' +number.toString());

  number ??= 3; // ??를 사용하면 기존 값이 null 일 때만 저장된다.
  print('KEG ?? op : '+ number.toString());
  number ??= 4; // null이 아니므로 3이 유지된다.
  print('KEG after ?? op : ' + number.toString());


  /*
    타입 비교 연산자
    is 키워드를 사용.
   */

  double castNum = 1;
  print('KEG castNum is int ? : '+ (castNum is int).toString());
  // print('KEG castNum is int ? : '+ castNum is int); 에서 castNum을 toString 하지 않으면 에러발생.
  print('KEG castNum is String ? : '+ castNum.toString() is String);
  print('KEG cast is! int ? : '+ castNum.toString() is! int);

  /*
    함수
    required 키워드 : 파라미터가 null 값이 불가능한 타입이면 기본값을 지정해주거나 필수로 입력해야한다.
    기본값을 가지는 포지셔널 파라미터는 [] 기호를 사용.
   */

  //required
  print(addTwoNumbers(a: 1, b: 2));
  print(adddTwoNumbers(1));
  print(addddTwoNumbers(2, b: 4));

  /*
     익명 / 람다 함수
     함수의 이름이 없고 1회성으로 사용.
   */

  List<int> funNum = [1,2,3,4,5];
  final allMembers = funNum.reduce((value, element){
    return value + element;
  });

  print(allMembers);

  // 람다 함수로 모든 값 더하기
  final allMembersRam = funNum.reduce((value,element) => value + element);
  print(allMembersRam);

  Idol blackPink = Idol("지수");
 // blackPink.sayName();

  // Named Parameter , Named Constructor 확인 필요

  //private 다트 언어에서는 같은 파일에서만 접근이 가능함을 의미
  Idol bts = Idol('bts');
 // print(bts._name); private 이라 에러 발생

 // ContainerEx();
}

// 매개변수를 필수로 입력해야 한다는 뜻.
int addTwoNumbers({
  required int a,
  required int b,
}) {
  return a+b;
}

//기본값을 가지는 파라미터
int adddTwoNumbers(int a, [int b = 2]) {
  return a+b;
}

// 포지셔널 파라미터와 네임드 파라미터를 섞어서 사용가능. 섞어 쓸 때는 포지셔널 파라미터가 반드시 위에 위치 해야한다.
int addddTwoNumbers(int a, {
  required int b,
  int c = 4,
}) {
  return a+b+c;
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
