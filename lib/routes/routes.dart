import 'package:finniu/screens/intro_screen.dart';
import 'package:finniu/screens/investment_question/result.dart';
import 'package:finniu/screens/investment_question/select_range.dart';
import 'package:finniu/screens/investment_question/start_invesment.dart';
import 'package:finniu/screens/login/email_screen.dart';
import 'package:finniu/screens/login/forgot_password.dart';
import 'package:finniu/screens/login/invalid_email.dart';
import 'package:finniu/screens/onboarding/section_1.dart';
import 'package:finniu/screens/onboarding/section_2.dart';
import 'package:finniu/screens/onboarding/section_3.dart';
import 'package:finniu/screens/onboarding/section_4.dart';
import 'package:finniu/screens/signup/email_screen.dart';
import 'package:finniu/screens/login/start_screen.dart';
import 'package:finniu/screens/onboarding/start_onboarding.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => IntroScreen(),
    '/login_start': (BuildContext context) => const StartLoginScreen(),
    '/login_email': (BuildContext context) => EmailLoginScreen(),
    '/investment_select': (BuildContext context) => SelectRange(),
    '/sign_up_email': (BuildContext context) => const SignUpEmailScreen(),
    '/login_forgot': (BuildContext context) => const ForgotPassword(),
    '/login_invalid': (BuildContext context) => const InvalidEmail(),
    '/on_boarding_start': (BuildContext context) => StartOnboarding(),
    '/investment_start': (BuildContext context) => const StartInvestment(),
    '/investment_result': (BuildContext context) => const ResultInvesment(),
  };
}
