import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;

  const MyTextBox({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(
          left: 15,
          bottom: 15,
        ),
        margin: EdgeInsets.only(
          left: 20, 
          right: 20, 
          top: 8,
          bottom: 8,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //section name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sectionName),

              //edit button
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.settings, color: Colors.grey[500]),
                ),
            ],
          ),
          //text
          Text(text),

        ],
      ),
    );
  }
}