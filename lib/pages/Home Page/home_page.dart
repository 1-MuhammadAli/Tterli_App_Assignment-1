import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widget/cardwidget1.dart';
import '../../Widget/cardwidget2.dart';
import 'components/categorieswidget.dart';
import 'components/textfieldwidget.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: GestureDetector(
        onTap: () {

          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                 padding: const EdgeInsets.only(top: 9.0),
                 child: SizedBox(
                     //height: 102.26,
                     width: double.infinity,
                     child: Image.asset('images/top_nav.png')),
               ),
               // SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(top: 13.0),
                 child: Center(
                   child: SizedBox(
                       height: 54,
                       width: 160,
                       child: Image.asset('images/logo.png')),
                 ),
               ),
                const TextFieldWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0,left: 24),
                  child: Text("All Categories",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  )),
                ),
                CategoriesWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 34.0,left: 24,right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recommended",style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                      Row(
                        children: [
                          Text("View all",style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffF3D434),
                          ),),
                          const Icon(Icons.arrow_forward,color: Color(0xffF3D434),size: 14,)
                        ],
                      ),
                    ],
                  ),
                ),
                //////////////
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 24.0,top: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (kDebugMode) {
                              print("UTZ Cheese Balls");
                            }
                          },
                          child: const CardWidget1(
                            image: 'images/image15.png',
                            text: 'UTZ Cheese Balls',
                            price: '\$4.99',
                            rating: '4.8',
                            text1: 'Tesco',
                            text2: 'Aldi',
                            text3: 'Asda',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (kDebugMode) {
                              print('Basil pesto gluten');
                            }
                          },
                          child: const CardWidget1(
                            image: 'images/basil.png',
                            text: 'Basil pesto gluten',
                            price: '\$4.99',
                            rating: '4.8',
                            text1: 'Tesco',
                            text2: 'Aldi',
                            text3: 'Asda',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0,top: 40,right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New products",style:GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),),
                      Row(
                        children: [
                          Text("View all",style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffF3D434),
                          ),),
                          const Icon(Icons.arrow_forward,color: Color(0xffF3D434),size: 14,)
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (kDebugMode) {
                      print('Dominionsnack');
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20,right: 20),
                    child: CardWidget2(
                      image: 'images/Dominionsnack.png',
                      heading: "Veggie wendy the worm",
                      text: "Lorem ipsum is a placeholder text used to demonstrate the visual",
                      price: '\$4.2',
                      rating: '4.8',
                      text1: 'Tesco',
                      text2: 'Aldi',
                      text3: 'Asda',
                    ),
                  ),
                ),
               InkWell(
                 onTap: () {
                   if (kDebugMode) {
                     print('fast food');
                   }
                 },
                 child: const Padding(
                   padding: EdgeInsets.only(left: 20.0,top: 12,right: 20),
                   child: CardWidget2(
                       text2: 'Aldi',
                       text3: 'Asda',
                       text1: 'Tesco',
                       text: 'Lorem ipsum is a placeholder text used to demonstrate the visual',
                       image: 'images/Dominionsnack.png',
                       rating: '4.8',
                       price: '\$4.99',
                       heading: 'No chicken burger'
                   ),
                 ),
               ),
               InkWell(
                 onTap: () {
                   if (kDebugMode) {
                     print('A B C D');
                   }
                 },
                 child: const Padding(
                   padding: EdgeInsets.only(left: 20.0,top: 12,right: 20),
                   child: CardWidget2(
                       text2: 'Aldi',
                       text3: 'Asda',
                       text1: 'Tesco',
                       text: 'Lorem ipsum is a placeholder text used to demonstrate the visual',
                       image: 'images/Dominionsnack.png',
                       rating: '4.8',
                       price: '\$4.99',
                       heading: 'No chicken burger'
                   ),
                 ),
               ),

              ],
            ),
        ),
      ),
    );
  }
}








