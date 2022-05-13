import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/main_screen_controller.dart';


class SpecialExhibitionScreen extends StatelessWidget {
  const SpecialExhibitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Center(
        child:ListView(
          shrinkWrap: true,
          children: const [
            SpecialExhibitionItemContainer(),
            SpecialExhibitionItemContainer(),
            SpecialExhibitionItemContainer(),
            SpecialExhibitionItemContainer(),
            SpecialExhibitionItemContainer(),
            SpecialExhibitionItemContainer(),
          ],)
      ),
    );
  }
}


class SpecialExhibitionItemContainer extends StatelessWidget {
  const SpecialExhibitionItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: deviceWidth*0.9, height: deviceWidth*0.7,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/sample.png',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, bottom: 60),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  IconButton( icon: const Icon(Icons.bookmark_border_outlined,), color: Colors.grey,iconSize: 25,tooltip: '북마크',
                    onPressed: () => {},)
                ],
              ),
              Column(
                children: const [
                  Text('여름 바다처럼\n세일도 시원하게!',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20),),
                  Text('UP TO 90%',style: TextStyle(color: Colors.white, fontSize: 35))
                ],)
            ],
          ),
        ),
      ),
    );
  }
}
