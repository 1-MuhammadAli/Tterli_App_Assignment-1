import 'package:flutter/material.dart';
class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}
bool _isSelected=false;
class _IconWidgetState extends State<IconWidget> {

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () async {
      setState(() {
        _isSelected=!_isSelected;
      });
    }, icon: _isSelected ?Icon(Icons.favorite,color: Colors.red,):
    Icon(Icons.favorite_border_outlined,color: Colors.red,));
  }
}