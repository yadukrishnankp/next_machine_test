import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';

class AppToast{



  static  showInfoToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.flat,
      alignment: Alignment.topCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
  static  showWarningToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.flat,
      alignment: Alignment.topCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
  static  showErrorToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.flat,
      alignment: Alignment.topCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
}