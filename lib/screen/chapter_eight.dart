import 'package:flutter/material.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [1,2,3,4,5]
            .map((number) => Image.asset('asset/img/image_$number.jpeg',fit: BoxFit.cover,),
        ).toList(),
      )
    );
  }
}