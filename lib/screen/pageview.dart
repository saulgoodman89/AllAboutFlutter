import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*
class pageview extends StatelessWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 상태바가 흰색이면 dark로 표시. 실제 태블릿 우측 상단에 와이파이 아이콘이 검은색으로 변한다.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
      return Scaffold(
        body: PageView(
          children: [1,2,3,4,5].map((number)=> Image.asset(
            'assets/image_$number.jpeg',
                fit: BoxFit.fitHeight,
          ),
          )
              .toList(),
        )
      );
  }
  
}*/

class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  /*
    PageController는 PageView에서 어떤 페이지가 보이게 될지 정해주는 컨트롤러
   */
  PageController pageController = PageController();

  /*
    화면을 어떻게 그릴지 담당.
    setState가 호출될때마다 호출되어진다.
    setState는 화면에 실질적인 변경이 필요할때만 호출된다.
   */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1,2,3,4,5].map(
            (number) => Image.asset(
              'assets/image_$number.jpeg',
              fit: BoxFit.fitHeight,
            ),
        )
            .toList()
      )
    );
  }

  /*
      initState
      Widget의 LifeCycle 동안 단 한번만 수행.
      위젯의 설정 / BuildContext에 따라 결정되어지는 초기화 진행.

   */
  @override
  void initState() {
    super.initState();  // 필수
    print('KEG initState()');

    Timer.periodic(
      Duration(seconds: 3),
        (timer) {
          /*
            int? : null safety 사용 문법.
            ?는 해당변수가 int 값 또는 Null을 가질 수 있음을 뜻함.
           */
          int? nextPage = pageController.page?.toInt();

          if(nextPage == null) {
            return;
          }

          if(nextPage == 4){
            nextPage = 0;
          }else {
            nextPage++;
          }

          pageController.animateToPage(nextPage, duration: Duration(milliseconds:500), curve: Curves.ease);
        }
    );
  }
}