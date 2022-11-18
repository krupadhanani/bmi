import 'package:bmi/second.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  TextEditingController w1 = TextEditingController();
  TextEditingController w2 = TextEditingController();
  TextEditingController w3 = TextEditingController();

  double hg = 0;
  double wg = 0;
  double bmi = 0;

  String gender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI calculator"),
          backgroundColor: Color(0xffa80077),
        ),
        body: Column(
          children: [
            Expanded(
                // flex: 2,
                child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset("myimage/meterrrrrrrrrrrrrrr.png"))),
            // Expanded(
            //     // flex: 4,
            //     child: Container(
            //   child: Expanded(
            //       child: Row(
            //     children: [
            //       Expanded(
            //           child: Container(
            //         margin: EdgeInsets.only(
            //             right: 20, bottom: 10, top: 10, left: 10),
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(10)),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.grey,
            //                 offset: Offset(5.0, 5.0),
            //                 blurRadius: 10.0,
            //                 spreadRadius: 2.0,
            //               ),
            //             ]),
            //         child: Expanded(
            //           child: Row(
            //             children: [
            //               Image.asset('myimage/male.png'),
            //               // ListTile(
            //               //   title: Text("Male"),
            //               //   leading: Radio(
            //               //       value: "male",
            //               //       fillColor: MaterialStateColor.resolveWith(
            //               //           (states) => Colors.pinkAccent),
            //               //       groupValue: gender,
            //               //       onChanged: (value) {
            //               //         setState(() {
            //               //           gender = value.toString();
            //               //         });
            //               //       }),
            //               // ),
            //             ],
            //           ),
            //         ),
            //       )),
            //       Expanded(
            //           child: Container(
            //         margin: EdgeInsets.only(
            //             right: 20, bottom: 10, top: 10, left: 10),
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(10)),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.grey,
            //                 offset: Offset(5.0, 5.0),
            //                 blurRadius: 10.0,
            //                 spreadRadius: 2.0,
            //               ),
            //             ]),
            //         child: Expanded(
            //           child: Row(
            //             children: [
            //               Image.asset('myimage/female.jpg'),
            //               // ListTile(
            //               //   title:
            //               //       Text("Female"),
            //               //   leading: Radio(
            //               //       value: "female",
            //               //       fillColor: MaterialStateColor.resolveWith(
            //               //           (states) => Colors.pinkAccent),
            //               //       groupValue: gender,
            //               //       onChanged: (value) {
            //               //         setState(() {
            //               //           gender = value.toString();
            //               //         });
            //               //       }),
            //               // ),
            //             ],
            //           ),
            //         ),
            //       ))
            //     ],
            //   )),
            // )),
            Expanded(
              // flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: w1,
                        decoration: InputDecoration(
                            labelText: "Age",
                            hintText: "Enter your age",
                            icon: Icon(Icons.person_outline)),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: w2,
                        decoration: InputDecoration(
                            labelText: "Height",
                            hintText: "In Feet",
                            icon: Icon(Icons.insert_chart)),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: w3,
                        decoration: InputDecoration(
                            labelText: "Weight",
                            hintText: "Enter your weight",
                            icon: Icon(Icons.line_weight)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ElevatedButton.icon(
                  onPressed: (){
                    String a = w1.text;
                    String b = w2.text;
                    String c = w3.text;

                    print(a);
                    print(b);
                    print(c);

                    double n1 = double.parse(a);
                    double n2 = double.parse(b);

                    double meter = n1 / 3.28;
                    print(meter);
                    bmi = n2 / (meter * meter);
                    if (bmi < 18.5) {
                      print("underweight");
                    } else if (bmi >= 18.5 && bmi < 24.9) {
                      print("Normal");
                    } else if (bmi >= 25.0 && bmi < 39.9) {
                      print("overweight");
                    } else {
                      print("You are obesed");
                    }
                    print(bmi);

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return second(bmi, gender);
                      },
                    ));

                  },
                  icon: Icon(Icons.favorite,color: Colors.white,),
                  label: Text("Claculate"),
                 style: ElevatedButton.styleFrom(
                   primary: Color(0xffa80077),
                 )),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16,right: 16),
            )
          ],
        ));
  }
}
