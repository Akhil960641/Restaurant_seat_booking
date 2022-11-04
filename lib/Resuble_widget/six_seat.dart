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
    Size size=MediaQuery.of(context).size;
    return

      InkWell(
        onTap: () => widget.isHomePage?null:setState(() => flag = !flag),
        child: Container(
            width: size.width * .23,
            height: size.height * .017,
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
