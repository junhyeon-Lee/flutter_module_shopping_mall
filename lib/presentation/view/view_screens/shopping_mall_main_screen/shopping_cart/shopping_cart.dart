import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/common_appbar.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {

  bool nowState = true;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: const CommonAppBar(title: '장바구니',),
      body: nowState?Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/pika.png',scale: 10,),
              const Text('장바구니가 비어있어요'),
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.only(left: 70, right: 70, top: 10,bottom: 10),
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(1))
                  ),
                  child: const Text('쇼핑하러 가기',style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          )
      ) :Column(children: [
        Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                activeColor: Colors.black,
                checkColor: Colors.white,
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {isCheck = value!;
                    });
                  }),
                Expanded(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('전체선택(2/2)'),
                      Text('전체삭제'),

                    ],
                  ),
                ),
              ],
            ),

        Container(width: deviceWidth,height: 1, color: Colors.grey.withOpacity(0.4),),

        SizedBox(height: deviceHeight*0.5,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {isCheck = value!;
                          });
                        }),
                    const Text('삭제'),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/pika.png',scale: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('런커'),
                        Text('[VARIVAS] AVANI JIGGING MAX POWER'),
                        Text('옵션: 옵션1'),

                      ],)
                  ],
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:  const BorderRadius.all(Radius.circular(3)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(children:[
                        IconButton(onPressed: (){}, icon: const Icon(
                          Icons.remove_outlined,
                        ),),
                        const Text('1'),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_outlined,
                        ),),
                      ]),
                    ),
                    const SizedBox(width: 1,),
                  ],
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('20%'),
                        Text('100,000', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ],
                    ),
                    const Text('120,000원')
                  ],
                ),



              ],
              ),

            ],
          ),
        ),


        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('총 상품 금액 (2개)'),
                Text('200,000'),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('총 배송비'),
                Text('0원'),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('합계'),
                Text('200,000원'),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('(적립 포인트 2,000P))'),
              ],
            ),
          ],
        ),

        Container(height: 50,width: deviceWidth,
          color: Colors.greenAccent,
          child: const Center(child: Text('구매하기',style: TextStyle(color: Colors.white),)),
        )


        ],
      ),
    );
  }
}
