import 'package:flutter/material.dart';

import '../Widget/cardwidget1.dart';
import '../Widget/cardwidget2.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items=[
      AssetImage('images/dessert.png'),
      AssetImage('images/snacks.png'),
      AssetImage('images/breakfast.png'),
      AssetImage('images/beer.png'),
      AssetImage('images/sausage.png'),
      AssetImage('images/milk.png'),
      AssetImage('images/FastFood.png'),
      AssetImage('images/Dinner.png'),
      AssetImage('images/BBQ.png'),
      AssetImage('images/Partyfood.png'),
      AssetImage('images/Kids.png'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
             Image.asset('images/top_nav.png'),
              SizedBox(height: 10,),
             Center(child: Image.asset('images/logo.png')),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 48,
                  width: 377,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 1,color: Colors.grey),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "I'm looking for...",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("All Categories",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: items[index],fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(width: 10,)
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
                    Row(
                      children: [
                        Text("View all",style: TextStyle(color: Colors.yellow),),
                        Icon(Icons.arrow_forward,color: Colors.yellow,)
                      ],
                    ),
                  ],
                ),
              ),
              //////////////
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardWidget1(
                        image: 'images/image15.png',
                        text: 'UTZ CHeese Balls',
                        price: '\$4.99',
                        rating: '4.8',
                        text1: 'Tesco',
                        text2: 'Aldi',
                        text3: 'Asda',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardWidget1(
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
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New products",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                    Row(
                      children: [
                        Text("View all",style: TextStyle(color: Colors.yellow),),
                        Icon(Icons.arrow_forward,color: Colors.yellow,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
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
              SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 8.0),
               child: CardWidget2(
                   text2: 'Aldi',
                   text3: 'Asda',
                   text1: 'Tesco',
                   text: 'Lorem ipsum is a placeholder text used to demonstrate the visual',
                   image: 'images/fastfod.png',
                   rating: '4.8',
                   price: '\$4.99',
                   heading: 'No chicken burger'
               ),
             ),
              SizedBox(height: 100,)
            ],
          ),
      ),
    );
  }
}




