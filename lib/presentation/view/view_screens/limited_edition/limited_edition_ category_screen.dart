import 'package:flutter/material.dart';

import 'limited_edition_list_items.dart';

class LimitedEditionCategoryScreen extends StatefulWidget {
  const LimitedEditionCategoryScreen({Key? key}) : super(key: key);

  @override
  State<LimitedEditionCategoryScreen> createState() => _LimitedEditionCategoryScreenState();
}

class _LimitedEditionCategoryScreenState extends State<LimitedEditionCategoryScreen> {
  final  _valueList = ['품절임박순', '인기순', '할인마감순'];
  var _selectedValue = '품절임박순';
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [DropdownButtonHideUnderline(
          child: DropdownButton(
            value: _selectedValue,
            onChanged: (value){
              setState(() {
                _selectedValue = value.toString();
              });
            },
            items: _valueList.map((itemone){
              return DropdownMenuItem(
                  value: itemone,
                  child: Text(itemone)
              );
            }).toList(),
          ),
        ),

          SizedBox(height: deviceHeight*0.75,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 11, //item 개수
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3/5,
                crossAxisSpacing: 30,
              ),
              itemBuilder: (BuildContext context, int index) {
                return const SpecialEditionListItems();
              },
            ),
          ),
        ],
      ),
    );
  }
}
