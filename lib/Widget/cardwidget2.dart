import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'containerwidget.dart';
import 'iconwidget.dart';

class CardWidget2 extends StatelessWidget {
  final String heading;
  final String text;
  final String price;
  final String rating;
  final String image;
  final String text1;
  final String text2;
  final String text3;
  const CardWidget2({Key? key, required this.text2,required this.text3,required this.text1,required this.text,
    required this.image,required this.rating,required this.price,required this.heading,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
        width: 360,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 315,top: 8.0,),
              child: IconWidget(),
            ),
            Row(
              children: [
                SizedBox(
                    height: 122,
                    width: 80,
                    child: Image.asset(image)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: Text(heading,style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                    ),
                    SizedBox(
                      height: 39,
                      width: 220,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(text,
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                          ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Row(
                        children: [
                          Text(price,style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                const Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                                Text(rating,style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: ContainerWidget(
                              text: text1,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          ContainerWidget(text: text2),
                          const SizedBox(width: 5,),
                          ContainerWidget(text: text3),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}