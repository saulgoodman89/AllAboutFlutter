import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
            onHeartPressed: onHeartPressed,firstDay: firstDay,),
            _CoupleImage(),

          ],
        )
      )
    );
  }

  void onHeartPressed() {
    showCupertinoDialog(context: context, builder : (BuildContext builder){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          height: 300,
          child : CupertinoDatePicker(mode: CupertinoDatePickerMode.date,onDateTimeChanged: (DateTime date){
            setState(() {
              firstDay = date;
            });
          },
        ),
      ),
      );
    },
    barrierDismissible: true,
    );
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
  final DateTime firstDay;

  _DDay({
    required this.onHeartPressed,required this.firstDay,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text('U&I',
            style: textTheme.headline1),

        const SizedBox(height:16.0),
        Text(

          '우리 처음 만난 날',
          style: textTheme.bodyText1,
        ),
        Text(
          '${firstDay.year} . ${firstDay.month} . ${firstDay.day}',
          style: textTheme.bodyText1,
        ),
        Text(
          'D+${DateTime(now.year, now.month,now.day).difference(firstDay).inDays+1}',
          style: textTheme.headline2,
        ),
        const SizedBox(height: 16.0),
        IconButton(onPressed: onHeartPressed , icon: Icon(
          Icons.favorite,
          ),
        ),
      ],
    );
  }

}