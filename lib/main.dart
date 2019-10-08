import 'package:flutter/material.dart';
import 'package:leave_management_app/screens/dashboard/dashboard.dart';
import 'package:leave_management_app/screens/onboarding/onboarding.dart';
import 'package:leave_management_app/screens/preferences/preferences.dart';
import 'package:leave_management_app/screens/signup/signup.dart';
import 'package:leave_management_app/screens/uploads/uploads.dart';
import 'package:leave_management_app/theme/style.dart';
import 'package:leave_management_app/viewmodels/user_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences.getInstance().then((prefs) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => UserViewModel()),
        ],
        child: App(prefs: prefs),
      ),
    );
  });
}

class App extends StatelessWidget {
  final SharedPreferences prefs;

  App({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMA',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/onboard': (BuildContext context) => new OnboardingScreen(),
        '/dashboard': (BuildContext context) => new Dashboard(),
        '/signup': (BuildContext context) => new SignUp(),
        '/uploads': (BuildContext context) => new Uploads(),
        '/prefs': (BuildContext context) => new Preferences()
      },
      theme: appTheme(),
      home: _handleCurrentScreen(),
    );
  }

  Widget _handleCurrentScreen() {
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      return new SignUp();
    } else {
      return new OnboardingScreen(prefs: prefs);
    }
  }
}
