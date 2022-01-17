import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class CustomConfirmDialog extends StatelessWidget {
  CustomConfirmDialog({
    Key? key,
    this.title,
    required this.content,
    this.ok,
    this.cancel,
    required this.onPressed,
    this.isDestructiveAction = false,
  }) : super(key: key);

  String? title;
  final String? content;
  String? ok;
  String? cancel;
  final bool isDestructiveAction;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    title ??= L10n.of(context)!.confirmDialogTitle;
    ok ??= L10n.of(context)!.confirmDialogOk;
    cancel ??= L10n.of(context)!.confirmDialogCancel;

    if (Platform.isAndroid) {
      return AlertDialog(
        title: title == null ? null : Text(title!),
        content: content == null ? null : Text(content!),
        actions: <Widget>[
          FlatButton(
            textColor: isDestructiveAction ? Colors.red : Colors.blue,
            onPressed: onPressed,
            child: Text(
              ok!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: () => Navigator.pop(context),
            child: Text(
              cancel!,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      );
    } else {
      return CupertinoAlertDialog(
        title: title == null ? null : Text(title!),
        content: content == null ? null : Text(content!),
        actions: <Widget>[
          CupertinoDialogAction(
            isDestructiveAction: isDestructiveAction,
            onPressed: onPressed,
            child: Text(
              ok!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              cancel!,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      );
    }
  }
}
