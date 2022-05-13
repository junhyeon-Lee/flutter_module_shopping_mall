import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/common_round_container.dart';

class SideMyInformation extends StatelessWidget {
  const SideMyInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = MediaQuery.of(context).size.width;



    return SizedBox(width: deviceWidth*(250/360),
      child: Drawer(
        child: Column(
          children:  [


            Padding(
              padding: const EdgeInsets.only(left: 40,),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close,),),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: 80, height: 80,
                        decoration:  BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(100),),
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,),
                        child:const Icon(Icons.person,color: Colors.grey,size: 60,),),
                      const SizedBox(width: 15,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('닉네임'),
                          Text('홍길동'),
                          Text('1985,05,05'),
                        ],
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CommonRoundContainer(width: 120, height: 28, color: Colors.grey, circular: 80, text: '개인정보수정', fontSize: 11, textColor: Colors.black, fontWeight: FontWeight.bold),
                      SizedBox(width: 40,),
                    ],
                  ),
                ],
              ),
            ),



            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                children: const [
                  SidebarItem(text: '주문 내역'),
                  SidebarItem(text: '취소.반품.교환'),
                  SidebarItem(text: '리뷰 관리'),
                  SidebarItem(text: '포인트/쿠폰'),
                  SidebarItem(text: '고객센터'),
              ],),
            ],
          )

        ],),

      ),
    );
  }
}


class SidebarItem extends StatelessWidget {
  const SidebarItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(onTap: (){},
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children:  [
            Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15),
              child: Text(text,style: const TextStyle(fontSize: 14),),
            ),
          ],),
          Row(
            children: [
              Container(height: 1,width: deviceWidth*(250/360)*(210/250), color: Colors.grey,),
            ],
          )
        ],
      ),
    );
  }
}



