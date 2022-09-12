import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'containerwidget.dart';
import 'iconwidget.dart';
class CardWidget1 extends StatelessWidget {
  final String text;
  final String price;
  final String rating;
  final String image;
  final String text1;
  final String text2;
  final String text3;
  const CardWidget1({Key? key, required this.text,required this.image,required this.price,required this.rating,required this.text1,required this.text2,required this.text3}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
        width: 170,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 140,top: 8.0),
              child: IconWidget(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,),
                  child: Center(child: SizedBox(
                      height: 109,
                      width: 77,
                      child: Image.asset(image))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                  child: Text(text,style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price,style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),),
                      Row(children: [
                        const Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                        Text(rating,style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),
                      ],)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 8,bottom: 12.0),
                  child: Row(
                    children: [
                      ContainerWidget(
                        text: text1,
                      ),
                      const SizedBox(width: 5,),
                      ContainerWidget(text: text2),
                      const SizedBox(width: 5,),
                      ContainerWidget(text: text3),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



