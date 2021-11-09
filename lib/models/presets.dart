import 'package:flutter/material.dart';


final kSubmitButtonStyle = ButtonStyle(
  backgroundColor:
  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
  enableFeedback: true,
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(0)),
    ),
  ),
);

final kTextFieldDecoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide:
      BorderSide(color: Colors.lightBlueAccent, width: 4),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide:
      BorderSide(color: Colors.lightBlueAccent, width: 4),
    ),
);
