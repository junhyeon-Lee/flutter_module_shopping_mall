import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/payment_page_viewmodel.dart';

class PaymentInputContainer extends StatelessWidget {
const PaymentInputContainer({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {



  return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 40,
          padding: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey,

          ),
          child: const Center(child: TextField(decoration: InputDecoration(border: InputBorder.none),)),
        ),
      ));
}
}

class PaymentDropDown extends StatelessWidget {
  const PaymentDropDown({Key? key, required this.value, required this.item, required this.viewModel}) : super(key: key);

  final List value;
  final String item;
  final PaymentPageViewModel viewModel;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Expanded(
        child: Container(height: 40, width:90,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: DropdownButton(
            underline: const SizedBox(),
            isExpanded:true,
            value: item,
            items: value.map((value) {
              return DropdownMenuItem(value: value, child: Text(value
                ,style: const TextStyle(fontSize: 15,color: Color(0xff303030)),));
            }).toList(),
            onChanged: (value) {
              viewModel.changeDropDownPhone(value.toString());
            },),
        ),
      ),
    );
  }
}


class PaymentDropDownLong extends StatelessWidget {
  const PaymentDropDownLong({Key? key, required this.value, required this.item, required this.viewModel, required this.caseType}) : super(key: key);
  final List value;
  final String item;
  final PaymentPageViewModel viewModel;
  final int caseType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Expanded(
        child: Container(height: 40,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: DropdownButton(
            underline: const SizedBox(),
            isExpanded:true,
            value: item,
            items: value.map((value) {
              return DropdownMenuItem(value: value, child: Text(value
                ,style: const TextStyle(fontSize: 15,color: Color(0xff303030)),));
            }).toList(),
            onChanged: (value) {
              switch(caseType){
                case 1: viewModel.changeDropDownEmail(value.toString()); break;
                case 2: viewModel.changeDropDownDelivery(value.toString()); break;
                case 3: viewModel.changeDropDownPayment(value.toString()); break;
              }
            },),
        ),
      ),
    );
  }
}

class PaymentInputField extends StatelessWidget {
  const PaymentInputField({Key? key, required this.text, required this.item, required this.value, required this.isDropDown, required this.viewModel}) : super(key: key);

  final String text;
  final String item;
  final List value;
  final bool isDropDown;
  final PaymentPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SizedBox(width:100, height: 40,
            child: Center(child: Row(
              children:  [
                Text(text),
              ],
            ))),

        isDropDown?PaymentDropDown(item: item, value: value, viewModel: viewModel,):Container(),

        const PaymentInputContainer(),
      ],
    );
  }
}