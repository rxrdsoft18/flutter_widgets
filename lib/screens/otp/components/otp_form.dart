import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/constants.dart';
import 'package:flutter_widgets/size_config.dart';
import 'package:flutter_widgets/widgets/default_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(64),
                child: TextFormField(
                  autofocus: true,
                  onSaved: (pin1) {},
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                  style: const TextStyle(color: Colors.white,fontSize: 24),
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(64),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    nextField(value, pin3FocusNode);
                  },
                  style: const TextStyle(color: Colors.white,fontSize: 24),
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(64),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    nextField(value, pin4FocusNode);
                  },
                  style: const TextStyle(color: Colors.white,fontSize: 24),
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(64),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                    }
                  },
                  style: const TextStyle(color: Colors.white,fontSize: 24),
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(height: SizeConfig.screenHeight * 0.15),
        ],
      ),
    );
  }
}
