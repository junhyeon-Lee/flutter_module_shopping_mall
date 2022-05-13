import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({Key? key, required this.text}) : super(key: key);

  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(padding: const EdgeInsets.all(2),
        width: 65,
        decoration: const BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.all(Radius.circular(50),)),
        child:  Center(child: Text(text,style: const TextStyle(color: Colors.white),)),),
    );
  }
}

class SearchCategory extends StatelessWidget {
  const SearchCategory({Key? key, required this.text, required this.index}) : super(key: key);

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(height: 50,

      decoration: BoxDecoration(
          border:
          (index==0)?Border.all(color: Colors.black):
          (index%2==0)? const Border(left:BorderSide(color: Colors.black),right:BorderSide(color: Colors.black),bottom:BorderSide(color: Colors.black)):
          (index==1)?const Border(top:BorderSide(color: Colors.black),right:BorderSide(color: Colors.black),bottom:BorderSide(color: Colors.black))
              :const Border(right:BorderSide(color: Colors.black),bottom:BorderSide(color: Colors.black))
          ),
        child: Center(child: Text(text)),
      ),
    );
  }
}

