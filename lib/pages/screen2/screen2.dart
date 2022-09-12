import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/questionwidget.dart';
class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Image.asset('images/top_nav.png'),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: InkWell(
                  onTap: () {
                    if (kDebugMode) {
                      print('Home page');
                    }
                  },
                  child: Row(children: [
                    const Icon(Icons.arrow_back_ios_new,size: 14,),
                    Text('Home',style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    )),
                  ],),
                ),
              ),

              const SizedBox(height: 10,),

              Center(
                child: Text('About',style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600
                )),
              ),

              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('About Otterli',style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                )),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('It is a long established fact that a reader will  be distracted by the readable content of a  page when looking at its layout.',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    )),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('Our mission',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('It is a long established fact that a reader will  be distracted by the readable content of a  page when looking .',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    )),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('FAQ',style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                )),
              ),
              const SizedBox(height: 10,),
              const QuestionWidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              const SizedBox(height: 10,),
              const QuestionWidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              const SizedBox(height: 10,),
              const QuestionWidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              const SizedBox(height: 10,),
              const QuestionWidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),

            ],
          ),
      ),
    );
  }
}


