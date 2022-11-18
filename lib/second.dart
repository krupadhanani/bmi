import 'package:bmi/first.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  double bmi;
  String s;
  second(this.bmi, this.s);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController w1 = TextEditingController();
  TextEditingController w2 = TextEditingController();
  TextEditingController w3 = TextEditingController();

  double bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI calculator"),backgroundColor: Color(0xffa80077),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset("myimage/happy.jpg",fit: BoxFit.contain,),
            ) ,
            Text("Your BMI ",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w700),),
            Text("${widget.bmi}",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.w700),),
            Text("${widget.s}",style: TextStyle(color: Color(0xffa80077),fontSize: 18,fontWeight: FontWeight.w700),),

            Container(
              child: ElevatedButton.icon(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return first();
                    },));
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  label: Text("Let Agian."),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffa80077),
                  )),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16,right: 16),
            )
          ],
        ),
      ),
    );
  }
}