import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_mazen_momen/global/quiz_data.dart';
import 'package:quiz_app_mazen_momen/widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? exit = await _showExitConfirmationDialog(context);
        if (exit == true) {
          // Exit the app
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
        // backgroundColor: const Color(0xFFF5F5F5),
        body: Column(
          children: [
            for (int i = 0; i < quizData.length; i++)
              CategoryContainer(index: i)
          ],
        ),
      ),
    );
  }

  Future<bool?> _showExitConfirmationDialog(BuildContext context) async {
    return showDialog<bool?>(
      context: context,
      builder: (context) {
        return AlertDialog(
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
}
