import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leave_management_app/Assets.dart';
import 'package:leave_management_app/components/google_button.dart';
import 'package:leave_management_app/theme/custom_colors.dart';
import 'package:leave_management_app/theme/style.dart';
import 'package:leave_management_app/viewmodels/user_viewmodel.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    bool _isLoggedIn = user.isLoggedIn;

    return ChangeNotifierProvider<UserViewModel>(
        builder: (context) => UserViewModel(),
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(Assets.slide_one),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(),
                  flex: 2,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 2, right: 2),
                        child:
                            Text("Welcome", style: appTheme().textTheme.title),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(" Please sign in with your company email"),
                      ),
                      Padding(
                          padding: EdgeInsets.all(30),
                          child: _isLoggedIn ? _SignOut() : _GoogleSignIn()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Checkbox(
                            activeColor: CustomColors.primary,
                            checkColor: CustomColors.primary,
                            value: false,
                            onChanged: (bool value) {},
                          ),
                          Text(" Keep me signed in"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }

  _GoogleSignIn() {
    return GoogleSignInButton(
        icon: Icons.add_circle_outline,
        label: 'Sign In with Google',
        onPressed: () {});
  }

  _SignOut() {}
}
