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
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0))),
      height: 60,
      color: Colors.white,
      minWidth: width,
      onPressed: onPressed,
      child: new Stack(
        children: <Widget>[
          Padding(
              child: Image(
                image: AssetImage(Assets.google_logo),
                fit: BoxFit.contain,
                width: 30,
                height: 30,
              ),
              padding: EdgeInsets.only(left: 10)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                label,
                style: CustomTextStyle.titleB,
              ),
            ),
          )
        ],
      ),
    );
  }
}
