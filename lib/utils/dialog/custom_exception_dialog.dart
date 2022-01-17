import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class CustomExceptionDialog extends StatelessWidget {
  CustomExceptionDialog({
    Key? key,
    this.title,
    this.content,
    this.ok,
    required this.onPressed,
    this.isDestructiveAction = false,
  }) : super(key: key);

  String? title;
  String? content;
  String? ok;
  final bool isDestructiveAction;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    title ??= L10n.of(context)!.exceptinDialogTitle;
    ok ??= L10n.of(context)!.exceptinDialogOk;

    if (content != null) {
      content = content!.replaceFirst(RegExp(r'.+\:\s'), '');
    }
    if (Platform.isAndroid) {
      return AlertDialog(
        title: title == null ? null : Text(title!),
        content: content == null ? null : Text(content!),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.blue,
            onPressed: onPressed,
            child: Text(
              ok!,
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
            isDefaultAction: true,
            onPressed: onPressed,
            child: Text(
              ok!,
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
