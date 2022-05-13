import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/limited_edition/limited_edition_%20category_screen.dart';

class LimitedEdition extends StatelessWidget {
  const LimitedEdition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;




    List<String> images = ['assets/images/sample.png','assets/images/pika.png','assets/images/sample.png','assets/images/pika.png'];
    return Scaffold(
      body: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 100.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: deviceWidth,
                  decoration: const BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Image.asset(i,fit: BoxFit.fitWidth,),
                );
              },
            );
          }).toList(),
        ),



          SizedBox(height: deviceHeight*0.85,
          child: const DefaultTabController(
            length: 10,
            child: Scaffold(
              appBar: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs: [
                  Tab(text: '전체',),
                  Tab(text: '낚시대',),
                  Tab(text: '릴',),
                  Tab(text: '낚시줄',),
                  Tab(text: '찌',),
                  Tab(text: '루어/베이트',),
                  Tab(text: '훅/낚시바늘',),
                  Tab(text: '싱커/봉돌/추',),
                  Tab(text: '기타',),
                  Tab(text: '가방/의류',),
                ],
              ),
              body: TabBarView(
                children: <Widget>[

                  LimitedEditionCategoryScreen(),
                  Tab(text: '2',),
                  Tab(text: '3',),
                  Tab(text: '4',),
                  Tab(text: '5',),
                  Tab(text: '6',),
                  Tab(text: '7',),
                  Tab(text: '8',),
                  Tab(text: '9',),
                  Tab(text: '10',),


                ],
              ),

            ),



          ),
          ),







      ],),
    );
  }
}
