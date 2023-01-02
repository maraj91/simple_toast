library simple_toast;

import 'dart:async';
import 'package:flutter/material.dart';

//ignore:must_be_immutable
class ToastWidget extends StatelessWidget {
  final String message;
  final double positionFromBottom;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const ToastWidget(
      {super.key,
        required this.message,
        required this.positionFromBottom,
        required this.backgroundColor,
        this.textStyle,});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: positionFromBottom,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor, //light blue
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
            child: DefaultTextStyle(
                style: const TextStyle(),
                child: Text(
                  message,
                  style: textStyle,
                )),
          ),
        ),
      ),
    );
  }
}

class SimpleMToast {
  //time in seconds
  static const int lengthShort = 2;
  static const int lengthDefault = 3;
  static const int lengthLong = 5;
  static void makeToast({required BuildContext context,
    required String message,
    required double positionFromBottom,
    Color backgroundColor = Colors.black54,
    TextStyle? textStyle = const TextStyle(fontSize: 18, color: Colors.white),
    int seconds = lengthShort}) {
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) => ToastWidget(
          message: message,
          positionFromBottom: positionFromBottom,
          backgroundColor: backgroundColor,
          textStyle: textStyle,
        ));
    Overlay.of(context)?.insert(overlayEntry);
    Timer(Duration(seconds: seconds), () => overlayEntry.remove());
  }
}
