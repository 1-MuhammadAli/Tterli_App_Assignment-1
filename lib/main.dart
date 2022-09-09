import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tterli_app_assignment1/pages/home_page.dart';
import 'package:tterli_app_assignment1/pages/screen2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
bool _isSelected=false;
class _MyAppState extends State<MyApp> {
  @override
  int selectedPage = 0;
  final _pageOptions = [
    const HomePage(),
    const Screen2(),
  ];
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 7, 173, 90),
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: _pageOptions[selectedPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.search),
          backgroundColor: Color.fromARGB(255, 7, 173, 90),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
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
                          children: [
                            Icon(Icons.home,color: Colors.grey,),
                            Text("Home",style: TextStyle(
                              color: Colors.grey
                            ),),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.menu,color: Colors.grey,),
                            Text("Menu",style: TextStyle(
                                color: Colors.grey
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
                            selectedPage=0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite,color: Colors.grey,),
                            Text("Favorite",style: TextStyle(
                                color: Colors.grey
                            ),),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectedPage=1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person,color: Colors.grey,),
                            Text("Account",style: TextStyle(
                                color: Colors.grey
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

////////////////////////////////////////////////////////


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
// int selectedPage = 0;
// final _pageOptions = [
// const HomePage(),
// const Screen2(),
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         extendBody: true,
//         //resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.grey.shade300,
//         body:_pageOptions[selectedPage],
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.search),
//           backgroundColor: Colors.green,
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         extendBodyBehindAppBar: true,
//         bottomNavigationBar: ClipRRect(
//           // borderRadius: BorderRadius.only(
//           //   topLeft: Radius.circular(20.0),
//           //   topRight: Radius.circular(20.0),
//           // ),
//           child: BottomAppBar(
//             shape: CircularNotchedRectangle(),
//             notchMargin: 7,
//             child: Container(
//               height: 65,
//               color: Colors.transparent,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Material_Button(
//                         icon: Icons.menu,
//                         text: "Menu",
//                         abc: 1,
//                       ),
//                       Material_Button(
//                           icon: Icons.home,
//                           text: "Home",
//                         abc: 0,
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Material_Button(
//                         icon: Icons.favorite,
//                         text: "Favorite",
//                         abc: 1,
//                       ),
//                       Material_Button(
//                           icon: Icons.person,
//                           text: "Account",
//                         abc: 1,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Material_Button extends StatefulWidget {
//   String text;
//   IconData icon;
//   int abc;
//   Material_Button({required this.icon,required this.text,required this.abc});
//
//   @override
//   State<Material_Button> createState() => _Material_ButtonState();
// }
//
// class _Material_ButtonState extends State<Material_Button> {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Color.fromARGB(255, 7, 173, 90),
//       statusBarBrightness: Brightness.dark,
//     ));
//     return MaterialButton(
//       onPressed: () {
//         setState(() {
//          int a=abc;
//         });
//       },
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(widget.icon,color: Colors.grey,),
//           Text(widget.text,style: TextStyle(
//             color: Colors.grey,
//           ),),
//         ],
//       ),
//     );
//   }
// }

