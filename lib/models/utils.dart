import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(BuildContext context, String message) =>
      Scaffold.of(context)
        // ignore: deprecated_member_use
        ..hideCurrentSnackBar()
        // ignore: deprecated_member_use
        ..showSnackBar(
          SnackBar(content: Text(message)),
        );
}
