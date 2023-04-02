 import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class BMIResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  BMIResultScreen({
    required this.result,
    required this.isMale,
    required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#070323'),
      appBar: AppBar(
        backgroundColor: HexColor('#070323'),
        centerTitle: true,
        title: (Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.pink
          ),
             )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender : ${isMale ?'Male': 'female'}',
                style: TextStyle(
                    color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize:27.5

              ),),
              Text('Age: $age',
                style: TextStyle(
                    color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize:27.5

              ),),
              Center(

                child: Text('Result: $result',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize:27.5,

                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
