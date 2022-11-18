import 'package:bmi/first.dart';
import 'package:flutter/material.dart';

class two extends StatefulWidget {
  const two({Key? key}) : super(key: key);

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {

  List<String> fontlist = ["f1","f2","f3"];

  @override
  void initState() {
    super.initState();
    gonext();
  }

  gonext() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return first();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF61045F), Color(0xfffc6767)],
        )),
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(right: 120, top: 150, left: 120),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xffa80077), Color(0xff41295a)]),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(10.0, 15.0),
                        blurRadius: 30.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
                child: Center(
                    child: Text(
                  "BMI",
                  style: TextStyle(
                      fontFamily: "f3",
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,)
                )),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Calculator",
                  style: TextStyle(fontFamily:"f2",fontSize: 50, color: Colors.white,
                      shadows: [
                        Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 8.0,
                        color: Colors.black87,
                    ),
                  ]
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                child: Text(
                  //"Eating a healthy diet is the key to heart disease prevention.",
                  """         Eating a healthy diet
  is the key to heart disease prevention...  """,
                  style: TextStyle(fontSize: 25,fontFamily:"f1",shadows: [
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 8.0,
                      color: Colors.black87,
                    ),
                  ]),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
