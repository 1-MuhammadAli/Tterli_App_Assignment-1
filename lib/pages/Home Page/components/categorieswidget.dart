import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {

  final List items=[
    const AssetImage('images/dessert.png'),
    const AssetImage('images/snacks.png'),
    const AssetImage('images/breakfast.png'),
    const AssetImage('images/beer.png'),
    const AssetImage('images/sausage.png'),
    const AssetImage('images/milk.png'),
    const AssetImage('images/FastFood.png'),
    const AssetImage('images/Dinner.png'),
    const AssetImage('images/BBQ.png'),
    const AssetImage('images/Partyfood.png'),
    const AssetImage('images/Kids.png'),
  ];

   CategoriesWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0,left: 24),
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 79,
                  width: 53,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: items[index],fit: BoxFit.fill,
                      )
                  ),
                ),
                const SizedBox(width: 10,)
              ],
            );
          },
        ),
      ),
    );
  }
}