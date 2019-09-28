import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/body.dart';

class OnboardingScreen extends StatelessWidget {
  final SharedPreferences prefs;

  OnboardingScreen({this.prefs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
