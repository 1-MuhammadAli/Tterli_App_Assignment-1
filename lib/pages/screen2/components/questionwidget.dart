import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionWidget extends StatefulWidget {
  final String text;
  const QuestionWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}
bool _isSelected=false;
class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
      child: Container(
        width: 365,
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
                  child: _isSelected?Text('Question 1',style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff07AD5A),
                  ),):Text('Question 1',style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
                IconButton(onPressed: () async {
                  setState(() {
                    _isSelected=!_isSelected;
                  });
                }, icon: _isSelected?const Icon(Icons.remove,color: Color(0xff07AD5A),size: 16,):const Icon(Icons.add,size: 16,)),
              ],
            ),
            _isSelected?Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 20.0,bottom: 25),
              child: Text(widget.text,style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
            ): const SizedBox(height: 0,),
          ],
        ),
      ),
    );
  }
}