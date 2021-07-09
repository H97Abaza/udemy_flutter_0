import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 165;
  int age = 18;
  int weight = 50;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                          ;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blue : Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /* Image(
                              image: AssetImage('images/male.png'),
                              height: 90,
                              width: 90,
                            ) */
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.grey : Colors.pink,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*  Image(
                              image: AssetImage('images/female.png'),
                              height: 90,
                              width: 90,
                            ) */
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            )
                          ],
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent[700],
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        print(value.round());
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'age--',
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      age > 0 ? age-- : print('error');
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: 'age++',
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      age < 150 ? age++ : print('error');
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight--',
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      weight > 3 ? weight-- : print("error");
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight++',
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      weight < 200 ? weight++ : print("error");
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: BoxBorder.lerp(null, null, 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: MaterialButton(
              onPressed: () {
                result = (weight / pow(height / 100, 2)).round();
                print(result);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      result: result,
                      age: age,
                      isMale: isMale,
                    ),
                  ),
                );
              },
              color: Colors.deepPurpleAccent,
              child: const Text(
                'CALCULATE',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

// var result=weight/pow(height/100,2);

}
