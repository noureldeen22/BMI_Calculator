import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
 bool isMale = true;
 double height =120.0;
 int weight = 50;
 int age = 16;

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#070323'),
      appBar: AppBar(
          backgroundColor: HexColor('#070323'),
        centerTitle: true,
        title: (
            Text('BMI Calculator',
            style: TextStyle(fontWeight: FontWeight.w900),))
      ),
      body: Column(
        children: [
          Expanded (
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(onTap: ()
                    {
                        setState(() {
                          isMale = true;
                        });

                    },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              color: Colors.white,
                              Icons.male,
                              size: 70

                            ),
                            SizedBox(height: 15,),
                            Text('Male',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10,),
                          color: isMale ? Colors.pink : Colors.grey.withOpacity(.1),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20
                    ,),
                  Expanded(
                    child: GestureDetector(onTap:()
                    {
                       setState(() {
                         isMale = false;
                       });

                    },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                color: Colors.white,
                              Icons.female,
                              size: 70
                            ),
                            SizedBox(height: 15,),
                            Text('Female',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,fontSize: 25)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10,),
                            color: isMale ? Colors.grey.withOpacity(.1) : Colors.pink

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                        style: TextStyle(
                            color: Colors.pink ,fontWeight: FontWeight.bold,fontSize: 35)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic
                      ,
                      children: [
                        Text('${height.round()}',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox (height
                            : 5,),
                        Text('cm',
                            style:
                             TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20)),

                      ],
                    ),
                    Slider(
                      activeColor: Colors.pink,
                      thumbColor: Colors.pink,
                        value:height,
                        max: 220.0,
                        min:80.0,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });

                          },
                    ),

                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),
                    color: Colors.grey.withOpacity(.1)),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                                style: TextStyle(
                                   color: Colors.pink, fontWeight: FontWeight.bold,fontSize: 25)),
                            Text('$weight',
                              style: TextStyle(
                                 color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    weight--;
                                  });
                                },
                          heroTag: 'weight--'
                                    ,mini: true,
                                   child:Icon(Icons.remove),
                                  backgroundColor: Colors.pink,
                                ),
                                FloatingActionButton(onPressed:(){
                                 setState(() {
                                   weight++;
                                 });;
                                },
                                    heroTag: 'weight++'
                                    ,mini: true,
                                  child:Icon(Icons.add),
                                  backgroundColor: Colors.pink,
                                ),
                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),
                            color: Colors.grey.withOpacity(.1)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width:
                 5 ,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                                style: TextStyle(
                                   color: Colors.pink, fontWeight: FontWeight.bold,fontSize: 25)),
                            Text('$age',
                              style: TextStyle(
                                 color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                },
                                 heroTag: 'age--'
                                    ,mini: true,
                                  child:Icon(Icons.remove),
                                  backgroundColor: Colors.pink,
                                ),
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age++'
                                    ,mini: true,
                                  child:Icon(Icons.add),
                                  backgroundColor: Colors.pink,
                                ),
                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),
                            color: Colors.grey.withOpacity(.1),
                      ),
                    ),
                  ),
                ),

                )],
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            color: Colors.pink,
            child: MaterialButton(onPressed: ()
            {
             double; var result = weight / pow(height/100,2);
             print(result.round());
             Navigator.push(context, MaterialPageRoute(
                 builder: (context)=> BMIResultScreen(
                   age: age,
                   isMale: isMale,
                   result: result,
                 ),
             ),
             );
            },
              child:
              Text('Calculator',style: TextStyle(color: Colors.white),)
            ,),
          ),
        ],
      ),
    );
  }
}
