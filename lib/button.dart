import 'package:flutter/material.dart';
import 'main.dart';


class ButtonP extends StatelessWidget {
  const ButtonP({Key? key, required this.title, required this.color, required this.action}) : super(key: key);
  final String title;
  final String color;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    if(color == '1'){
      return SizedBox(
        height: 70,
        width: 70,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
          ),
          onPressed: action,
          child: Text(title),

        ),
      );
    }else{
      return Container(
        height: 70,
        width: 70,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
          ),
          onPressed: action,
          child: Text(title),

        ),
      );
    }
  }
}
class ButtonX extends StatelessWidget {
  const ButtonX({Key? key, required this.title, required this.color, required this.action}) : super(key: key);
  final String title;
  final String color;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    if(color == '1'){
      return SizedBox(
        height: 70,
        width: 150,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
          ),
          onPressed: action,
          child: Text(title),

        ),
      );
    }else{
      return Container(
        height: 70,
        width: 150,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
          ),
          onPressed: action,
          child: Text(title),

        ),
      );
    }
  }
}
