import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/common_appbar.dart';
import 'package:flutter_module_shopping_mall/presentation/view/common_widgets/common_container_line.dart';
import 'package:flutter_module_shopping_mall/presentation/view/payment_page_viewmodel.dart';
import 'package:flutter_module_shopping_mall/presentation/view/payment_page_widgets.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PaymentPageViewModel viewModel = Get.put(PaymentPageViewModel());

    bool isPayment = false;
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final _dummyValueList=[];
    String _dummySelectedValue='';

    return  Scaffold(
      appBar: const CommonAppBar(title: '주문/결제',),
      body: Column(
        children: [
          SizedBox(width: deviceWidth, height: deviceHeight-120,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),
                  ExpansionTile(
                    initiallyExpanded:false, // ExpansionTile's 초기상태
                    tilePadding: EdgeInsets.zero,
                    title: const Text('배송 정보'),
                    children: [
                      Column(
                        children: [
                          Row(children: const [
                            Text('주문자 정보')
                          ],),
                          PaymentInputField(item: _dummySelectedValue, text: '이름 *', value: _dummyValueList, isDropDown: false, viewModel: viewModel,),
                          PaymentInputField(item: viewModel.phoneSelectedValue.value, text: '연락처 *', value: viewModel.phoneValueList, isDropDown: true, viewModel: viewModel,),
                          PaymentInputField(item: _dummySelectedValue, text: '이메일 *', value: _dummyValueList, isDropDown: false, viewModel: viewModel,),
                          Row(
                            children: [
                               const SizedBox(width:100, height: 40,),
                              Expanded(
                                child: Obx(()=>PaymentDropDownLong(item: viewModel.emailSelectedValue.value, value: viewModel.emailValueList.value, viewModel: viewModel, caseType: 1, ),),
                              ),
                            ],
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('배송지 정보'),
                              Text('집')
                          ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('배송지 이름'),
                              Text('변경하기')
                            ],),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('수령인'),
                              Text('홍길동')
                            ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('연락처1'),
                              Text('010-1234-5678')
                            ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('연락처2'),
                              Text('')
                            ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('이메일'),
                              Text('ace70401@gmai.com')
                            ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('주소'),
                              Text('경기도 부천시 조마루로 385번길 122\n삼보테크노타워21층')
                            ],),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('배송요청사항'),
                              Text('경비실에 맡겨주세요')
                            ],),


                        ],
                      )
                    ],
                  ),  //배송 정보


                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),

                 const ExpansionTile(
                   tilePadding: EdgeInsets.zero,
                   title: Text('주문 상품 2개'),
                 children: [

                 ],),

                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),

                  ExpansionTile(tilePadding: EdgeInsets.zero,
                    title: const Text('할인 방법'),
                    children: [
                      Column(
                        children: [

                          const Text('쿠폰'),

                          Row(
                            children: [
                              Expanded(
                                child:   Obx(()=>PaymentDropDownLong(item: viewModel.emailSelectedValue.value, value: viewModel.emailValueList.value,viewModel: viewModel, caseType: 1,),),
                              ),
                            ],
                          ),

                          const Text('포인트'),
                          Row(children: [
                            const PaymentInputContainer(),
                            Container(width: 150,height: 40,
                                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                                child: const Center(child: Text('전액 사용'))
                            )
                          ],),
                          const Text('보유 포인트 9,000P'),

                        ],
                      )
                    ],
                  ),


                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),

                   ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    initiallyExpanded:true,
                    title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Text('결제 방법'),
                        Obx(()=>
                        viewModel.paymentCreditState.value?const Text('신용/체크카드'):viewModel.paymentMutongState.value?const Text('무통장입급'):Container(),),
                      ],
                    ),
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        children: [

                          Obx(()=>
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                height:50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  color: viewModel.paymentCreditState.value?Colors.blue:Colors.white,
                                ),
                                child: const Center(child: Text('신용/체크카드')),),
                              onTap: (){viewModel.changeToCredit();},
                            ),
                          ),),

                          const SizedBox(width: 10,),

                          Obx(()=>
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                height:50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  color: viewModel.paymentMutongState.value?Colors.blue:Colors.white,
                                ),
                                child: const Center(child: Text('무통장입금')),),
                              onTap: (){viewModel.changeToMutong();},
                            ),
                          ),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                    ],),


                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),

                  ExpansionTile(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('결제 금액'),
                      Text('200,000 원')
                    ],
                  ),children:  [

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        Text('상품금액'),
                        Text('240,000원')
                      ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        Text('할인금액'),
                        Text('-40,000원')
                      ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        Text('배송비'),
                        Text('0원')
                      ],),

                    CommonContainerLine(width: deviceWidth-60, height: 1, circular: 10, color: Colors.grey),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        Text('총 결제금액'),
                        Text('200,000원')
                      ],),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children:  const [
                        Text('적립 포인트 2,000P')
                      ],),


                  ],),




                  CommonContainerLine(width: deviceWidth-60, height: 4, circular: 10, color: Colors.blue),

                  Row(
                    children: [
                      Obx(()=>
                      IconButton(onPressed: (){
                        viewModel.changeChecked();
                      },
                        icon:Icon(Icons.check_circle,color: viewModel.isChecked.value?Colors.blue:Colors.grey,),)
                      ),
                      const Text('주문 내용을 모두 확인하였으며, 개인정보 이용 및 제공과\n 구매 조건 및 결제에 동의합니다. (필수)',textAlign: TextAlign.start,),
                    ],
                  ),

                  CommonContainerLine(width: deviceWidth-60, height: 1, circular: 10, color: Colors.grey),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('개인정보 수집/이용 동의'),
                        Icon(Icons.chevron_right,)
                      ],
                    ),
                  ),


                  CommonContainerLine(width: deviceWidth-60, height: 1, circular: 10, color: Colors.grey),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('개인정보 제3자 제공 동의'),
                        Icon(Icons.chevron_right,)
                      ],
                    ),
                  ),


                  CommonContainerLine(width: deviceWidth-60, height: 1, circular: 10, color: Colors.grey),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('결제대행 서비스 이용약관 동의'),
                        Icon(Icons.chevron_right,)
                      ],
                    ),
                  ),


                  CommonContainerLine(width: deviceWidth-60, height: 1, circular: 10, color: Colors.grey),



                  
                  
                  const SizedBox(height: 40,),

                ],
              ),
            ),
          ),
          Container(height: 60,
            color: isPayment?Colors.blue:Colors.grey,
            child: const Center(child: Text("189,000원 결제하기",style: TextStyle(color: Colors.white),)),
          ),


        ],
      ),
    );
  }
}



