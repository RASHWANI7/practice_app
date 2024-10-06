import 'package:flutter/material.dart';

import '../constant/cart_of_the_activities.dart';
import '../constant/icons_list.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

List emoji = [
  Icons_List(descripe: 'happy', icon: Icons.account_circle),
  Icons_List(descripe: 'sad', icon: Icons.account_circle),
  Icons_List(descripe: 'angry', icon: Icons.account_circle),
  Icons_List(descripe: 'good', icon: Icons.account_circle),
  Icons_List(descripe: 'crazy', icon: Icons.account_circle),
  Icons_List(descripe: 'shy', icon: Icons.account_circle),
  Icons_List(descripe: 'tired', icon: Icons.account_circle),
];

List cart_exercise = [
  card_of_the_activities(
    name_of_the_exercise: 'exercise',
    icon_of_the_exercise: Icons.accessibility,
    color_of_the_cart: Colors.red,
  ),
  card_of_the_activities(
    name_of_the_exercise: 'football',
    icon_of_the_exercise: Icons.sports_soccer,
    color_of_the_cart: Colors.purple,
  ),
  card_of_the_activities(
    name_of_the_exercise: 'basket',
    icon_of_the_exercise: Icons.sports_baseball,
    color_of_the_cart: Colors.orange,
  ),
  card_of_the_activities(
    name_of_the_exercise: 'golf',
    icon_of_the_exercise: Icons.sports_golf,
    color_of_the_cart: Colors.green,
  ),
  card_of_the_activities(
    name_of_the_exercise: 'cricket',
    icon_of_the_exercise: Icons.sports_cricket,
    color_of_the_cart: Colors.cyanAccent,
  ),
  card_of_the_activities(
    name_of_the_exercise: 'video games',
    icon_of_the_exercise: Icons.sports_esports,
    color_of_the_cart: Colors.brown,
  ),
];

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hi Abode !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '8 Augest 2024',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 35,
                ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: ('Search'),
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do You feel ?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                    itemCount: emoji.length,
                    separatorBuilder: (context, i) {
                      return Container(
                        width: 30,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Container(
                        height: 100,
                        child: emoji[i],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70))),
                child: ListView.separated(
                  itemCount: cart_exercise.length,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 100,
                      child: cart_exercise[i],
                    );
                  },
                  separatorBuilder: (context, i) {
                    return Container(
                      height: 20,
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
