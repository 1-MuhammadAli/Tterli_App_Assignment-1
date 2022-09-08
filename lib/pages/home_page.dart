import 'package:flutter/material.dart';

import '../Widget/cardwidget1.dart';
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
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
             Image.asset('images/top_nav.png'),
              SizedBox(height: 10,),
             Center(child: Image.asset('images/logo.png')),
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
                child: Text("All Categories"),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended"),
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget1(
                      image: 'images/image15.png',
                      text: 'UTZ CHeese Balls',
                      price: '\$4.2',
                      rating: '4.8',
                      text1: 'Tesco',
                      text2: 'Aldi',
                      text3: 'Asda',
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}


