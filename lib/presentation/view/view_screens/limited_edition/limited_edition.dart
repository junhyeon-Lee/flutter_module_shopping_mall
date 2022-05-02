import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/special_exhibition/special_edition_list_items.dart';

class LimitedEdition extends StatelessWidget {
  const LimitedEdition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
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



          SizedBox(height: 1000,
          child: DefaultTabController(
            length: 10,
            child: Scaffold(
              appBar: const TabBar(
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
              body: SizedBox(height: 800,
                child: TabBarView(
                  children: <Widget>[

                    GridView.builder(padding: const EdgeInsets.all(30),
                      itemCount: 11, //item 개수
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,

                        childAspectRatio: 3/5,

                        crossAxisSpacing: 30, //수직 Padding
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        //item 의 반목문 항목 형성
                        return const SpecialEditionListItems();
                      },
                    ),




                    const Tab(text: '2',),
                    const Tab(text: '3',),
                    const Tab(text: '4',),
                    const Tab(text: '5',),
                    const Tab(text: '6',),
                    const Tab(text: '7',),
                    const Tab(text: '8',),
                    const Tab(text: '9',),
                    const Tab(text: '10',),


                  ],
                ),
              ),

            ),



          ),
        ),










      ],),
    );
  }
}
