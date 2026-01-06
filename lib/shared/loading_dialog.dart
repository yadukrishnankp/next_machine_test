import 'package:flutter/material.dart';


class LoadingDialog {
  static bool isDialogOpen = false;

  static Future<void> show(BuildContext context) async {
    if (isDialogOpen) return;
    isDialogOpen = true;
    await showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismiss on tap outside
      builder: (context) => WillPopScope(
        onWillPop: () async {
          isDialogOpen = false;
          return true;
        }, // Prevent back button
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child:  CircularProgressIndicator(color: Colors.red,),
          ),
        ),
      ),
    );
    isDialogOpen = false;
  }

  static void close(BuildContext context) {
    if (isDialogOpen) {
      Navigator.of(context, rootNavigator: true).pop();
      isDialogOpen = false;
    }
  }
}