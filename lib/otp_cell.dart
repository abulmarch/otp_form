import 'package:flutter/material.dart';

class OtpCell extends StatelessWidget {
  const OtpCell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 68,
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration:  InputDecoration(counterText: "", border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)
        )),
        textAlign: TextAlign.center,
        onSaved: (newValue) {},
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}