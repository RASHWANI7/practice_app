import 'package:flutter/material.dart';

class card_of_the_activities extends StatelessWidget {
  late final String name_of_the_exercise;
  late final IconData icon_of_the_exercise;
  late final Color color_of_the_cart;

  card_of_the_activities(
      {required String name_of_the_exercise,
      required IconData icon_of_the_exercise,
      required Color color_of_the_cart}) {
    this.name_of_the_exercise = name_of_the_exercise;
    this.icon_of_the_exercise = icon_of_the_exercise;
    this.color_of_the_cart = color_of_the_cart;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              color: color_of_the_cart,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name_of_the_exercise,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    icon_of_the_exercise,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
