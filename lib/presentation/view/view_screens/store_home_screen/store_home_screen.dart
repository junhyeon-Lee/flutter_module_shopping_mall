import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StoreHomeScreen extends StatelessWidget {
  const StoreHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = MediaQuery.of(context).size.width;
    List<String> images = ['assets/images/sample.png','assets/images/pika.png','assets/images/sample.png','assets/images/pika.png'];




    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
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
                      child: Image.asset(i),
                  );
                },
              );
            }).toList(),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('Best'),
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('낚시대'),
                ],),
                Column(children: [
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('세트'),
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('릴'),
                ],),
                Column(children: [
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('바다낚시'),
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('낚시줄'),
                ],),
                Column(children: [
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('민물낚시'),
                  CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  const Text('베이트/루어'),
                ],),
              ],
            ),
          ),

          Container( height:1.0,
            width:deviceWidth,
            color:Colors.grey.withOpacity(0.4)),


          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('브랜드😎'),
                  Text('전체보기'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  ],),
                  Column(children: [
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  ],),
                  Column(children: [
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  ],),
                  Column(children: [
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                    CircleAvatar(radius: deviceWidth*0.1, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  ],),
                ],
              ),
            ),

          ],
          ),





          Column(children: const [
            Text('실시간 인기있는 장비✨'),



          ],)



        ],
      ),
    );

  }}




