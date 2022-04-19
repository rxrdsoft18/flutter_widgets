import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/otp/otp_verification_screen.dart';

Map<String, WidgetBuilder> getApplicationRoute() {
  return {
    "/otp_screen" : (_) => const OtpVerificationScreen()
  };
}