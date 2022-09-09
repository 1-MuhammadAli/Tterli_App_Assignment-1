import 'package:flutter/material.dart';

import 'cardwidget1.dart';
import 'containerwidget.dart';
import 'iconwidget.dart';

class CardWidget2 extends StatelessWidget {
  String heading;
  String text;
  String price;
  String rating;
  String image;
  String text1;
  String text2;
  String text3;
  CardWidget2({required this.text2,required this.text3,required this.text1,required this.text,
    required this.image,required this.rating,required this.price,required this.heading,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      width: 379,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 345,top: 5),
            child: IconWidget(),
          ),
          Row(
            children: [
              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(image)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(heading,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 39,
                    width: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(text,
                        style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      children: [
                        Text(price,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_half,color: Colors.yellow,),
                            Text(rating),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ContainerWidget(
                          text: text1,
                        ),
                        SizedBox(width: 5,),
                        ContainerWidget(text: text2),
                        SizedBox(width: 5,),
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
    );
  }
}