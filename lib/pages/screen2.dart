import 'package:flutter/material.dart';

import '../Widget/questionwidget.dart';
class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Image.asset('images/top_nav.png'),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(children: [
                  Icon(Icons.arrow_back_ios_new),
                  Text('Home'),
                ],),
              ),

              SizedBox(height: 10,),

              Center(
                child: Text('About',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
              ),

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('About Otterli',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('It is a long established fact that a reader will  be distracted by the readable content of a  page when looking at its layout.'),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('Our mission',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('It is a long established fact that a reader will  be distracted by the readable content of a  page when looking .'),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('FAQ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10,),
              questionwidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              SizedBox(height: 10,),
              questionwidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              SizedBox(height: 10,),
              questionwidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              SizedBox(height: 10,),
              questionwidget(
                text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking .",
              ),
              SizedBox(
                height: 100,
              )

            ],
          ),
      ),
    );
  }
}


