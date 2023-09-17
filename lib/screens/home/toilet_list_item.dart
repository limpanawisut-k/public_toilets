
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/toilet.dart';

class ToiletListItem extends StatelessWidget {
  final Toilet toilet;

  const ToiletListItem({
    super.key,
    required this.toilet,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];

    for(var i =0;i < 5;i++){
      stars.add(Icon(Icons.star));
    }



    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.home, size: 30.0),
            Expanded(
                child: Text(
                  toilet.name,
                  style: GoogleFonts.kanit(color: Colors.red, fontSize: 30),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    if(toilet.point > 3.5)
                      Text('GOOD'),
                    // collection for  ไม่ใช่ forstatement
                    for(var i =0;i<toilet.point.floor();i++)
                      Icon(Icons.star),
                    Text(toilet.point.toString()),
                  ],
                ),
                Text(toilet.distance.toString() + ' M'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}