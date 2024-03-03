import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textValue;
  final Function onClick;
  const CustomButton(
      {super.key, required this.textValue, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: ElevatedButton(
        onPressed: () {
          onClick();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return const Color.fromARGB(255, 39, 23, 159);
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textValue,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
