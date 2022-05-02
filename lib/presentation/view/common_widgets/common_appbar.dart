import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget
    implements PreferredSizeWidget{
  const CommonAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.black),),
      leading: IconButton( icon: const Icon(Icons.close),color: Colors.black, tooltip: '이전페이지로',
        onPressed: () => {
        Navigator.pop(context)
        }, ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
