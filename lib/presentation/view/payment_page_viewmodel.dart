import 'package:get/get.dart';

class PaymentPageViewModel extends GetxController{

  var paymentCreditState = false.obs;
  var paymentMutongState = false.obs;
  void changeToCredit(){
    paymentCreditState.value=true;
    paymentMutongState.value=false;
  }
  void changeToMutong(){
    paymentCreditState.value=false;
    paymentMutongState.value=true;
  }


  var deliverySelectedValue = '직접입력'.obs;
  var deliveryValueList =  ['직접입력', '경비실에 맡겨주세요', '문앞에 두고 가주세요'].obs  ;
  void changeDropDownDelivery(String dropDownItem)=>deliverySelectedValue.value=dropDownItem;

  var phoneSelectedValue = '010'.obs;
  var phoneValueList = ['010', '011', '012'].obs;
  void changeDropDownPhone(String dropDownItem)=>phoneSelectedValue.value=dropDownItem;

  var emailValueList =  ['gmail.com', 'naver.com', 'snaho.com'].obs;
  var emailSelectedValue= 'snaho.com'.obs;
  void changeDropDownEmail(String dropDownItem)=>emailSelectedValue.value=dropDownItem;

  var paymentValueList =  ['신용/체크카드', '간편결제', '무통장입급'].obs;
  var paymentSelectedValue='신용/체크카드'.obs;
  void changeDropDownPayment(String dropDownItem)=>paymentSelectedValue.value=dropDownItem;



  var isChecked = false.obs;
  void changeChecked(){
    if(isChecked.value==false){
      isChecked.value=true;
    }
    else{
      isChecked.value=false;
    }
  }



}


