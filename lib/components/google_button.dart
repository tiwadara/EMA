import 'package:flutter/material.dart';
import 'package:leave_management_app/Assets.dart';
import 'package:leave_management_app/theme/text_style.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton(
      {Key key,
      this.icon,
      @required this.label,
      @required this.width,
      @required this.onPressed})
      : super(key: key);

  final double width;
  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      height: 60,
      color: Colors.white,
      minWidth: width,
      onPressed: onPressed,
      child: new Stack(
        children: <Widget>[
          Align(
            child: Text(
              label,
              style: CustomTextStyle.titleB,
            ),
            alignment: Alignment.center,
          ),
          Align(
            child: Image(image: AssetImage(Assets.google_logo)),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
