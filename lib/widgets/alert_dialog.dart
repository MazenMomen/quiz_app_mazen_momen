import 'package:flutter/material.dart';

Future<bool?> showExitConfirmationDialog(BuildContext context) async {
  return showAdaptiveDialog<bool?>(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        title: const Text('Exit App?'),
        content: const Text('Are you sure you want to exit the app?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Yes'),
          ),
        ],
      );
    },
  );
}
