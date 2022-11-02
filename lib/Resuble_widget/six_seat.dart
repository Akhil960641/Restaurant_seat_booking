import 'package:flutter/material.dart';

class Sixseat extends StatefulWidget {
   Sixseat({Key? key,required this.isHomePage}) : super(key: key);
   bool isHomePage;

  @override
  State<Sixseat> createState() => _SixseatState();
}

class _SixseatState extends State<Sixseat> {
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return

      InkWell(
        onTap: () => widget.isHomePage?null:setState(() => flag = !flag),
        child: Container(
            width: 90,
            height: 10,
            decoration: BoxDecoration(
              color:flag? Colors.white:Colors.yellow,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            )),
      );

  }
}
