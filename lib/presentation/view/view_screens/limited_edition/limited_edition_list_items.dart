import 'package:flutter/material.dart';

class SpecialEditionListItems extends StatelessWidget {
  const SpecialEditionListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(height: deviceWidth*0.4,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/sample.png',
                ),
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    IconButton( icon: const Icon(Icons.favorite_border_outlined,), color: Colors.grey,iconSize: 25,tooltip: '위시리스트추가',
                      onPressed: () => {},)
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('재고수량'),
                  Text('4/50'),
                ],
              ),
              const Text('린커'),
              const Text('[VARIVAS] AVANI JIGGING MAS POWER'),
              Row(
                children: const [
                  Text('20% 80,000 '),
                  Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                ],
              ),


              Row(
                children: const [
                  Icon(Icons.star_outlined,size: 15,),
                  Text('(120))')
                ],
              ),

              Row(
                children: [
                  Container(padding: const EdgeInsets.all(3),
                      decoration:const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: const Text('품절임박',style: TextStyle(color: Colors.white,fontSize: 12),),
                  ),

                  const SizedBox(width: 5,),
                  Container(padding: const EdgeInsets.all(3),
                    decoration:const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: const Text('무료배송',style: TextStyle(color: Colors.black,fontSize: 12),),
                  ),
                ],
              ),



            ],
          )
        ],
      ),
    );
  }
}


































