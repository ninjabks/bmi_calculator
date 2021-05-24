import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconName;
  final String gender;

  IconContent(this.iconName,this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender,
            style: kLabelTextStyle ),
      ],
    );
  }
}
