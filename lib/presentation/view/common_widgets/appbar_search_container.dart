import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarSearchContainer extends StatelessWidget {
  const AppBarSearchContainer({Key? key, required this.controller, required this.hintText}) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(width: deviceWidth*0.8, height: 40,
        padding: const EdgeInsets.only(left: 15, right: 15,top: 2),
        decoration: BoxDecoration(
        border: Border.all(color: Colors.black),borderRadius: const BorderRadius.all(Radius.circular(40.0)),),
          child: TextField(
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
          ),
    );
  }
}
