import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tterli_app_assignment1/pages/Home%20Page/home_page.dart';
import 'package:tterli_app_assignment1/pages/screen2/screen2.dart';
import 'package:tterli_app_assignment1/pages/screen3.dart';
import 'package:tterli_app_assignment1/pages/screen4.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int selectedPage = 0;
  final _pageOptions = [
    const HomePage(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff07AD5A),
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        //resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffFFFFFF),
        body: _pageOptions[selectedPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff07AD5A),
          child: const Icon(Icons.search),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 7,
            child: Container(
              height: 65,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            selectedPage==0?const Icon(Icons.home,color: Color(0xff07AD5A),):const Icon(Icons.home,color: Colors.grey,),
                            selectedPage == 0? Text("Home",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff07AD5A),
                            ),): Text("Home",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            selectedPage==2?const Icon(Icons.menu,color: Color(0xff07AD5A),):const Icon(Icons.menu,color: Colors.grey,),
                            selectedPage == 2? Text("Menu",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff07AD5A),
                            ),): Text("Menu",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            selectedPage==1?const Icon(Icons.favorite,color: Color(0xff07AD5A),):const Icon(Icons.favorite,color: Colors.grey,),
                            selectedPage == 1?Text("Favorite",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff07AD5A),
                            ),): Text("Favorite",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,

                            ),),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            selectedPage==3?const Icon(Icons.person,color: Color(0xff07AD5A),):const Icon(Icons.person,color: Colors.grey,),
                            selectedPage == 3? Text("Account",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff07AD5A),
                            ),): Text("Account",style:GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
