import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  final String? text;
  final VoidCallback? handler;

  const AdaptiveButton(String s, {super.key, this.text, this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
                          ? CupertinoButton(
                              onPressed: handler,
                              child: Text(text!))
                          : TextButton(
                              onPressed:  handler,
                              style: TextButton.styleFrom(
                                foregroundColor: Theme.of(context).primaryColor,
                              ),
                              child: Text(text!));
  }
}