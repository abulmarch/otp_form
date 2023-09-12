import 'package:flutter/material.dart';

import 'otp_cell.dart';
import 'rectangular_button.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Verification code',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'We have send the code verification to',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                  text: '+919874563210',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: '  Change your number?',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpCell(),
                  OtpCell(),
                  OtpCell(),
                  OtpCell(),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RectangularButton(
                        bgcolor: Colors.white,
                        textcolor: Colors.deepPurple,
                        bordercolor: Colors.grey,
                        text: 'Resend',
                        ontap: () {},
                      ),
                      RectangularButton(
                        bgcolor: Colors.deepPurple,
                        textcolor: Colors.white,
                        bordercolor: Colors.deepPurple,
                        text: 'Confirm',
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
