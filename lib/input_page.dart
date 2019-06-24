import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';

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
  int height = 183;

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
                            color: kTopCardColor,
                            child: IconContent(
                              icon: FontAwesomeIcons.mars,
                              color: selectedGender == Gender.male
                                  ? kActiveCardColor
                                  : kInactiveCardColor,
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
                            color: kTopCardColor,
                            child: IconContent(
                              icon: FontAwesomeIcons.venus,
                              text: 'FEMALE',
                              color: selectedGender == Gender.female
                                  ? kActiveCardColor
                                  : kInactiveCardColor,
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'HEIGHT',
                                style: kLabelStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    height.toString(),
                                    style: kValueStyle,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    'cm',
                                    style: kLabelStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: kActiveCardColor,
                                  inactiveTrackColor: kInactiveCardColor,
                                  thumbColor: kBottomButtonColor,
                                  overlayColor: kBottomButtonColorOverlay,
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15,
                                  ),
                                  overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 28,
                                  ),
                                ),
                                child: Slider(
                                  value: height.toDouble(),
                                  max: 220,
                                  min: 120,
                                  onChanged: (double value) {
                                    setState(() {
                                      height = value.round();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      color: kBottomCardColor,
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
                            color: kBottomCardColor,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: ReusableCard(
                            color: kBottomCardColor,
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
            color: kBottomButtonColor,
          ),
        ],
      ),
    );
  }
}
