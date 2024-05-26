import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';

createToast(String message, BuildContext context) async{
   await Flushbar(
            title: 'Shop App',
            message: message,
            duration: Duration(seconds: 3),
          ).show(context);
}