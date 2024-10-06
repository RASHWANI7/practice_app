import 'package:flutter/material.dart';

class Icons_List extends StatelessWidget {
  late final String descripe;
  late final IconData icon;

  Icons_List({required String descripe, required IconData icon}) {
    this.descripe = descripe;
    this.icon = icon;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          descripe,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}
