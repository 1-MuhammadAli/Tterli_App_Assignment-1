import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {
  String text;
  ContainerWidget({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
            width: 1,
            color: Colors.green
        ),
      ),
      child: Text(text,style: TextStyle(color: Colors.green),),
    );
  }
}