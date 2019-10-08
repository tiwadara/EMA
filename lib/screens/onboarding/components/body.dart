import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leave_management_app/components/google_button.dart';
import 'package:leave_management_app/theme/custom_colors.dart';
import 'package:leave_management_app/theme/style.dart';
import 'package:leave_management_app/viewmodels/user_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../Assets.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    bool _isLoggedIn = user.isLoggedIn;
    var screenHeight = MediaQuery.of(context).size.height;
    var scareenWidth = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider<UserViewModel>(
        builder: (context) => UserViewModel(),
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 0.8],
                    tileMode: TileMode.clamp,
                    colors: [Colors.white, CustomColors.primary],
                  ).createShader(
                      Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
                },
                blendMode: BlendMode.darken,
                child: Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(Assets.slide_one),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 30,
                right: 30,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Welcome", style: appTheme().textTheme.title),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(" Please sign in with your company email",
                          style: appTheme().textTheme.subtitle),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: _isLoggedIn ? _SignOut() : _GoogleSignIn()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: CustomColors.primary,
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text(" Keep me signed in",  style: appTheme().textTheme.subtitle),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _GoogleSignIn() {
    return GoogleSignInButton(
        icon: Icons.add_circle_outline,
        label: 'Google',
        onPressed: () {

        });
  }

  _SignOut() {}
}
