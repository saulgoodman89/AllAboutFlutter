import 'package:flutter/material.dart';

class CoupleHomeScreen extends StatelessWidget {
  const CoupleHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body:SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(),
            _CoupleImage(),
          ],
        )
      )
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
        IconButton(onPressed: () {}, icon: Icon(
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