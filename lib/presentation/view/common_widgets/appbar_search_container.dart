import 'package:flutter/material.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/Shopping_mall_main_screen_appbar.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/main_screen_controller.dart';
import 'package:flutter_module_shopping_mall/presentation/view/view_screens/shopping_mall_main_screen/search_screen/search_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class AppBarSearchContainer extends StatelessWidget {
  const AppBarSearchContainer({Key? key, required this.hintText, required this.isReadOnly}) : super(key: key);
  final String hintText;
  final bool isReadOnly;
  @override
  Widget build(BuildContext context) {

    final deviceWidth = MediaQuery.of(context).size.width;
    Get.put(ReactiveDistanceController());

    final controller = Get.find<ReactiveDistanceController>();
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,top: 10),
      child: Container( height: 40,
          padding: const EdgeInsets.only(left: 15, right: 15,top: 2),
          decoration: const BoxDecoration(
          color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(40.0)),),
            child:TextField(
              readOnly: isReadOnly,
              onTap: () {
                controller.focusOn();
              },
              decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/svgs/search.svg',),
                      tooltip: '검색'
                  )
              ),
            )
      ),
    );
  }
}
