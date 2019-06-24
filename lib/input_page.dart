import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const Color bottomCardColor = Color(0xFF0F1427);
const Color topCardColor = Color(0xFF1D1F33);
const Color inactiveCardColor = Color(0xFF8E8E99);
const Color activeCardColor = Color(0xFFFFFFFF);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else {
      maleCardColor = inactiveCardColor;
      femaleCardColor = activeCardColor;
    }
  }

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
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateColor(Gender.male);
                              });
                            },
                            child: ReusableCard(
                              color: topCardColor,
                              child: IconContent(
                                icon: FontAwesomeIcons.mars,
                                color: maleCardColor,
                                text: 'MALE',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateColor(Gender.female);
                              });
                            },
                            child: ReusableCard(
                              color: topCardColor,
                              child: IconContent(
                                icon: FontAwesomeIcons.venus,
                                text: 'FEMALE',
                                color: femaleCardColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    flex: 5,
                    child: ReusableCard(
                      color: bottomCardColor,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ReusableCard(
                            color: bottomCardColor,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: ReusableCard(
                            color: bottomCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            color: Color(0xFFEC4556),
          ),
        ],
      ),
    );
  }
}
