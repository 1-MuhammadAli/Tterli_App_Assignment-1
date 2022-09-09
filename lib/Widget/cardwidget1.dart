import 'package:flutter/material.dart';

import 'containerwidget.dart';
import 'iconwidget.dart';
class CardWidget1 extends StatelessWidget {
  String text;
  String price;
  String rating;
  String image;
  String text1;
  String text2;
  String text3;
  CardWidget1({Key? key, required this.text,required this.image,required this.price,required this.rating,required this.text1,required this.text2,required this.text3}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 183,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 150,top: 10),
            child: IconWidget(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(image))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price),
                    Row(children: [
                      Icon(Icons.star_half,color: Colors.yellow,),
                      Text(rating),
                    ],)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ContainerWidget(
                      text: text1,
                    ),
                    SizedBox(width: 5,),
                    ContainerWidget(text: text2),
                    SizedBox(width: 5,),
                    ContainerWidget(text: text3),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



