import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/screens/otp/components/body.dart';
import 'package:flutter_widgets/size_config.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff29225A),
      appBar: AppBar(
        elevation: 0,
        // title: const Text("OTP Widget"),
        backgroundColor: const Color(0xff29225A),
      ),
      body: Stack(
        children: [
          const Body(),
          Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(const Color(0xff29225A)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Reenviar"),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(const Color(0xff6655D8)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Confirmar"),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
