import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/otp/components/otp_form.dart';
import 'package:flutter_widgets/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Verificación de código",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hemos enviado la verificación del código a",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    "+5197****222",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "¿Cambiar número de teléfono?",
                    style: TextStyle(
                      color: Color(0xff6655D8),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const OtpForm(),
              const SizedBox(height: 10),
              buildTimer(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Reenviar código después ",style: TextStyle(color: Colors.grey),),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: const Duration(seconds: 60),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: Color(0xff6655D8)),
          ),
        ),
      ],
    );
  }
}
