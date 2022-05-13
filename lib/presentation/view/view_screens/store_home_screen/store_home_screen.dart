
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StoreHomeScreen extends StatefulWidget {
  const StoreHomeScreen({Key? key}) : super(key: key);

  @override
  State<StoreHomeScreen> createState() => _StoreHomeScreenState();
}

class _StoreHomeScreenState extends State<StoreHomeScreen> {

  bool item1 = true;
  bool item2 = false;
  bool item3 = false;
  bool item4 = false;


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
                  return Stack(
                    children: [
                      Container(padding: const EdgeInsets.all(40),
                          width: deviceWidth,
                          decoration: const BoxDecoration(
                              color: Colors.black
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(i,fit: BoxFit.cover,)
                          ),
                      ),
                      Positioned(
                        top:200, left:440,
                        child: Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          width:35,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            children: [
                              Text('${images.indexOf(i)+1}',
                                style: const TextStyle(color: Colors.white,fontSize: 16),),
                              Text('/${images.length}',
                                style: const TextStyle(color: Colors.blue,fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ],
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





          Column(children:  [
            const Text('실시간 인기있는 장비✨'),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12,right: 12,top: 3,bottom: 3),
                  decoration:  BoxDecoration(color: (item1)?Colors.blue:Colors.white,
                  borderRadius:  const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            item1=true;
                            item2=false;
                            item3=false;
                            item4=false;
                          });
                        },
                        child:  Text('낚시대',
                          style: TextStyle(
                              color: (item1)?Colors.white:Colors.blue,
                              fontSize: 15),
                        )
                    )
                ),

                Container(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 3,bottom: 3),
                    decoration:  BoxDecoration(color: (item2)?Colors.blue:Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            item1=false;
                            item2=true;
                            item3=false;
                            item4=false;
                          });
                        },
                        child:  Text('낚시줄',
                          style: TextStyle(
                              color: (item2)?Colors.white:Colors.blue,
                              fontSize: 15),
                        )
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 3,bottom: 3),
                    decoration:  BoxDecoration(color: (item3)?Colors.blue:Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            item1=false;
                            item2=false;
                            item3=true;
                            item4=false;
                          });
                        },
                        child:  Text('릴',
                          style: TextStyle(
                              color: (item3)?Colors.white:Colors.blue,
                              fontSize: 15),
                        )
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 3,bottom: 3),
                    decoration:  BoxDecoration(color: (item4)?Colors.blue:Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            item1=false;
                            item2=false;
                            item3=false;
                            item4=true;
                          });
                        },
                        child: Text('찌',
                          style: TextStyle(
                              color: (item4)?Colors.white:Colors.blue,
                              fontSize: 15),
                        )
                    )
                ),
              ],
            ),

            Container(width: deviceWidth*0.9,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('1'),
                  CircleAvatar(radius: deviceWidth*0.06, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  SizedBox( width: 350, child:
                  Flexible(
                      child: RichText(overflow:TextOverflow.ellipsis,maxLines:2, strutStyle:const StrutStyle(fontSize: 16.0),
                        text: const TextSpan(
                          text: 'GAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)test',
                        ), )))
                ],
              ),
            ),
            Container(width: deviceWidth*0.9,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('1'),
                  CircleAvatar(radius: deviceWidth*0.06, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  SizedBox( width: 350, child:
                  Flexible(
                      child: RichText(overflow:TextOverflow.ellipsis,maxLines:2, strutStyle:const StrutStyle(fontSize: 16.0),
                        text: const TextSpan(
                          text: 'GAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)test',
                        ), )))
                ],
              ),
            ),
            Container(width: deviceWidth*0.9,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('1'),
                  CircleAvatar(radius: deviceWidth*0.06, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  SizedBox( width: 350, child:
                  Flexible(
                      child: RichText(overflow:TextOverflow.ellipsis,maxLines:2, strutStyle:const StrutStyle(fontSize: 16.0),
                        text: const TextSpan(
                          text: 'GAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)test',
                        ), )))
                ],
              ),
            ),
            Container(width: deviceWidth*0.9,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('1'),
                  CircleAvatar(radius: deviceWidth*0.06, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  SizedBox( width: 350, child:
                  Flexible(
                      child: RichText(overflow:TextOverflow.ellipsis,maxLines:2, strutStyle:const StrutStyle(fontSize: 16.0),
                        text: const TextSpan(
                          text: 'GAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)test',
                        ), )))
                ],
              ),
            ),
            Container(width: deviceWidth*0.9,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('1'),
                  CircleAvatar(radius: deviceWidth*0.06, backgroundImage: const AssetImage('assets/images/pika.png'),),
                  SizedBox( width: 350, child:
                  Flexible(
                      child: RichText(overflow:TextOverflow.ellipsis,maxLines:2, strutStyle:const StrutStyle(fontSize: 16.0),
                        text: const TextSpan(
                          text: 'GAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)testGAIN ELEMENT BAIT ROD(뎁스 게인 엘레먼트 베이트 로드)test',
                        ), )))
                ],
              ),
            ),









          ],)
        ],
      ),
    );

  }}




