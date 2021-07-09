import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;

  // ignore: use_key_in_widget_constructors
  const BMIResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender:${isMale ? 'Male' : 'Female'}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Result:${result}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Age:${age}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
    print(isMale);
  }
}
