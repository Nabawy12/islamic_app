import 'package:flutter/material.dart';

class customButtom extends StatelessWidget {
  final String text;
  final Color color ;
  final void Function()? onpressed;
  const customButtom({super.key, required this.text, required this.color, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: ElevatedButton(onPressed: onpressed ,
            child: Text(text),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: color,
          )

        ),
      ),
    );
  }
}
