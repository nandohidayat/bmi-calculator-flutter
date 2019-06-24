import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Your Result',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kTopCardColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 50,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'NORMAL',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '22.1',
                              style: TextStyle(
                                fontSize: 120,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Normal BMI range:',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: kInactiveCardColor,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '18,5 - 25 kg/m2',
                              style: kResultStyle,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'You have a normal body weight. Good job!',
                              style: kResultStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'SAVE RESULT',
                                    style: kLabelStyle.copyWith(
                                      color: kActiveCardColor,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                height: 70,
                                color: Color(0xFF191A2E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
