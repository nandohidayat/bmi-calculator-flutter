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
  Gender selectedGender = Gender.male;

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
                          child: ReusableCard(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            color: topCardColor,
                            child: IconContent(
                              icon: FontAwesomeIcons.mars,
                              color: selectedGender == Gender.male
                                  ? activeCardColor
                                  : inactiveCardColor,
                              text: 'MALE',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: ReusableCard(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            color: topCardColor,
                            child: IconContent(
                              icon: FontAwesomeIcons.venus,
                              text: 'FEMALE',
                              color: selectedGender == Gender.female
                                  ? activeCardColor
                                  : inactiveCardColor,
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
