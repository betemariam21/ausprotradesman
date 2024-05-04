// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_pin_code_widget/flutter_pin_code_widget.dart';

class PinWidget extends StatefulWidget {
  const PinWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _PinWidgetState createState() => _PinWidgetState();
}

class _PinWidgetState extends State<PinWidget> {
  @override
  Widget build(BuildContext context) {
    return PinCodeWidget(
      minPinLength: 4,
      maxPinLength: 25,
      onChangedPin: (pin) {
        // check the PIN length and check different PINs with 4,5.. length.
      },
      onEnter: (pin, _) {
        // callback user pressed enter
      },
      centerBottomWidget: IconButton(
        icon: const Icon(
          Icons.fingerprint,
          size: 40,
        ),
        onPressed: () {},
      ),
    );
  }
}
