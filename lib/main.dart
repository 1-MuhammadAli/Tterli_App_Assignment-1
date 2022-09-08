import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tterli_app_assignment1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.search),
          backgroundColor: Colors.green,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: ClipRRect(
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20.0),
          //   topRight: Radius.circular(20.0),
          // ),
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
                      Material_Button(
                        icon: Icons.menu,
                        text: "Menu",
                      ),
                      Material_Button(
                          icon: Icons.home,
                          text: "Home"
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material_Button(
                        icon: Icons.favorite,
                        text: "Favorite",
                      ),
                      Material_Button(
                          icon: Icons.person,
                          text: "Account"
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

class Material_Button extends StatefulWidget {
  String text;
  IconData icon;
  Material_Button({required this.icon,required this.text});

  @override
  State<Material_Button> createState() => _Material_ButtonState();
}

class _Material_ButtonState extends State<Material_Button> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 7, 173, 90),
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialButton(
      onPressed: () {
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon,color: Colors.grey,),
          Text(widget.text,style: TextStyle(
            color: Colors.grey,
          ),),
        ],
      ),
    );
  }
}

