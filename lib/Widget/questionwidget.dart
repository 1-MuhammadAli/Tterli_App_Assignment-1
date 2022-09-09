import 'package:flutter/material.dart';
class questionwidget extends StatefulWidget {
  String text;
  questionwidget({required this.text});

  @override
  State<questionwidget> createState() => _questionwidgetState();
}
bool _isSelected=false;
class _questionwidgetState extends State<questionwidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: _isSelected?Text('Question 1',style: TextStyle(color: Colors.green),):Text('Question 1'),
                ),
                IconButton(onPressed: () async {
                  setState(() {
                    _isSelected=!_isSelected;
                  });
                }, icon: _isSelected?Icon(Icons.remove,color: Colors.green,):Icon(Icons.add)),
              ],
            ),
            _isSelected?Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(widget.text),
            ): SizedBox(height: 0,),
          ],
        ),
      ),
    );
  }
}