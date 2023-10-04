import 'package:flutter/material.dart';

class CoupleHomeScreen extends StatefulWidget {
  const CoupleHomeScreen({Key? key}) : super(key: key);


  @override
  State<CoupleHomeScreen> createState() => _CoupleHomeState();

}

class _CoupleHomeState extends State<CoupleHomeScreen> {
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('KEG CoupleHomeState build');
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body:SafeArea(
        top:true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
            onHeartPressed: onHeartPressed,),
            _CoupleImage(),

          ],
        )
      )
    );
  }

  void onHeartPressed() {
    print('Click');
  }

}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Image.asset(
        'assets/middle_image.png',
        height: MediaQuery.of(context).size.height / 2,
      )
    );
  }
}

class _DDay extends StatelessWidget{
  final GestureTapCallback onHeartPressed;
  _DDay({
    required this.onHeartPressed,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text('U&I'),

        const SizedBox(height:16.0),
        Text(
          '우리 처음 만난 날',
        ),
        Text(
          '우리 처음 만난 날'
        ),
        Text(
          '2022.08.06'
        ),
        const SizedBox(height: 16.0),
        IconButton(onPressed: onHeartPressed , icon: Icon(
          Icons.favorite,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'D+365',
        )
      ],
    );
  }

}