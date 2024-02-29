import 'package:flutter/material.dart';

class CustomSnackbar extends StatelessWidget {
  const CustomSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SnackBar(
      content: Text("This is a custom snackbar!"),
      behavior: SnackBarBehavior.floating,
    );
  }
}
