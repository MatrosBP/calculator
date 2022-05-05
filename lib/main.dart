import 'package:flutter/material.dart';

import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Калькулятор'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int v = 0;
  int point = 0;
  int pointfirst = 0;
  int pointy = 0;
  int pointfirsty = 0;
  int _counter = 0;
  String _counterx = "";
  String _countery = "";
  String _counteraction = "";
  String visible = "";
  double answer = 0;
  String answerF = "";

  void _incrementCounter1(String x) {
    setState(() {
      if(answerF != "")
        {
          v = 0;
          _counter = 0;
          _counterx = "";
          _countery = "";
          _counteraction = "";
          visible = "";
          answerF = "";
          if(v == 0) {
            if(x == '.' && point == 0 && pointfirst == 0){
              point = 1;
              _counterx = _counterx + "0" + x;
            }
            else if(x == '.' && point == 0){
              point = 1;
              _counterx = _counterx + x;
              pointfirst = 1;
            }
            else if(x == '.' && point != 0)
            {
              _counterx = _counterx;
              pointfirst = 1;
            }
            else if(x == '0' && point == 0)
            {
              _counterx = _counterx + x;
              pointfirst = 1;
            }
            else{
              _counterx = _counterx + x;
              pointfirst = 1;
            }
          }else{
            if(x == '.' && pointy == 0 && pointfirsty == 0){
              pointy = 1;
              _countery = _countery + "0" + x;
            }
            else if(x == '.' && pointy == 0){
              pointy = 1;
              _countery = _countery + x;
              pointfirsty = 1;
            }
            else if(x == '.' && pointy != 0)
            {
              _countery = _countery;
              pointfirsty = 1;
            }
            else{
              _countery = _countery + x;
              pointfirsty = 1;
            }
          }

        }
      else{
        if(v == 0) {
          if(x == '.' && point == 0 && pointfirst == 0){
            point = 1;
            _counterx = _counterx + "0" + x;
          }
          else if(x == '.' && point == 0){
            point = 1;
            _counterx = _counterx + x;
            pointfirst = 1;
          }
          else if(x == '.' && point != 0)
          {
            _counterx = _counterx;
            pointfirst = 1;
          }
          else if(x == '0' && point == 0)
          {
            _counterx = _counterx + x;
            pointfirst = 1;
          }
          else{
            _counterx = _counterx + x;
            pointfirst = 1;
          }
        }else{
          if(x == '.' && pointy == 0 && pointfirsty == 0){
            pointy = 1;
            _countery = _countery + "0" + x;
          }
          else if(x == '.' && pointy == 0){
            pointy = 1;
            _countery = _countery + x;
            pointfirsty = 1;
          }
          else if(x == '.' && pointy != 0)
          {
            _countery = _countery;
            pointfirsty = 1;
          }
          else{
            _countery = _countery + x;
            pointfirsty = 1;
          }
        }
      }

      visible = _counterx+_counteraction+_countery;
    });
  }


  void _incrementCountersum() {
    setState(() {
      v = 1;
      _counteraction ="+";
      visible = _counterx+_counteraction+_countery;
    });
  }
  void _incrementCountermin() {
    setState(() {
      v = 1;
      _counteraction ="-";
      visible = _counterx+_counteraction+_countery;
    });
  }
  void _incrementCountermultiply() {
    setState(() {
      v = 1;
      _counteraction ="*";
      visible = _counterx+_counteraction+_countery;
    });
  }
  void _incrementCountershare() {
    setState(() {
      v = 1;
      _counteraction ="/";
      visible = _counterx+_counteraction+_countery;
    });
  }
  void _incrementCounterdegree() {
    setState(() {

      visible = _counterx+_counteraction+_countery;
      var x = double.parse(_counterx);
      answer = x*x;
      answerF = answer.toString();

      point = 0;
      pointfirst = 0;
      pointy = 0;
      pointfirsty = 0;
    });
  }
  void _calculation() {
    setState(() {
      var x = double.parse(_counterx);
      var y = double.parse(_countery);
      if(_counteraction == "+"){
        answer = x+y;
        answerF = answer.toString();
      }
      else if(_counteraction == "-"){
        answer = x-y;
        answerF = answer.toString();
      }
      else if(_counteraction == "/" && y != 0.0){
        answer = x/y;
        answerF = answer.toString();
      }
      else if(_counteraction == "/" && y == 0.0){
        answerF = "Деление на ноль невозможно";
      }
      else if(_counteraction == "*"){
        answer = x*y;
        answerF = answer.toString();
      }

      point = 0;
      pointfirst = 0;
      pointy = 0;
      pointfirsty = 0;
      v=0;
    });
  }
  void _delete() {
    setState(() {
      v = 0;
      _counter = 0;
      _counterx = "";
      _countery = "";
      _counteraction = "";
      visible = "";
      answerF = "";
      point = 0;
      pointfirst = 0;
      pointy = 0;
      pointfirsty = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(


          children: <Widget>[
        Container(
        width: double.infinity,
            height: 150,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 24, bottom: 24),
                    child: Text(
                      visible,
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    )),
                Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 24, bottom: 24),
                    child: Text(
                      answerF,
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    )),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonP(title: '7',action:() => _incrementCounter1("7"),color: '1',),
                        ButtonP(title: '8',action:() => _incrementCounter1("8"),color: '1',),
                        ButtonP(title: '9',action:() => _incrementCounter1("9"),color: '1',),
                        ButtonP(title: '+',action: _incrementCountersum,color: '2',),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonP(title: '4',action:() => _incrementCounter1("4"),color: '1',),
                        ButtonP(title: '5',action:() => _incrementCounter1("5"),color: '1',),
                        ButtonP(title: '6',action:() => _incrementCounter1("6"),color: '1',),
                        ButtonP(title: '-',action: _incrementCountermin,color: '2',),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonP(title: '1',action:() => _incrementCounter1("1"),color: '1',),
                        ButtonP(title: '2',action:() => _incrementCounter1("2"),color: '1',),
                        ButtonP(title: '3',action:() => _incrementCounter1("3"),color: '1',),
                        ButtonP(title: '*',action: _incrementCountermultiply,color: '2',),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonP(title: '^2',action: _incrementCounterdegree,color: '2',),
                        ButtonP(title: '0',action:() => _incrementCounter1("0"),color: '1',),
                        ButtonP(title: '.',action:() => _incrementCounter1("."),color: '1',),
                        ButtonP(title: '/',action: _incrementCountershare,color: '2',),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonX(title: '=',action: _calculation,color: '1',),
                        ButtonX(title: 'C',action: _delete,color: '2',),
                      ],
                    ),
                  ),],),),

          ],
        ),
      ),
    );
  }
}
