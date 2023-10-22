import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_mazen_momen/global/quiz_data.dart';
import 'package:quiz_app_mazen_momen/widgets/alert_dialog.dart';
import 'package:quiz_app_mazen_momen/widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? exit = await showExitConfirmationDialog(context);
        if (exit == true) {
          // Exit the app
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            const SafeArea(child: SizedBox()),
            for (int i = 0; i < quizData.length; i++)
              CategoryContainer(index: i)
          ],
        ),
      ),
    );
  }
}
