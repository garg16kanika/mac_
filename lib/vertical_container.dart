import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mac_task/Horizontal_container.dart';
import 'package:mac_task/target_page.dart';

Widget VerticalContainer(BuildContext ctx) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          ctx,
          MaterialPageRoute(
            builder: (ctx) => TargetPage(),
          ));
    },
    child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person_off),
                Column(
                  children: [
                    Text('JOHN DOE'),
                    Text('10MIN AGO'),
                  ],
                ),
                HorizontalContainer('Health care'),
                Icon(Icons.details),
              ],
            ),
            Text('Food waste or food loss refers to uneaten or discarded food'),
            Text(
                'Some avenues that can be explored are educating farmers on good storage practices, recycling and composting, providing transportation and storage facilities, re-distributing leftover food from parties and events, and setting up compost plants and food waste management platforms.'),
            Row(
              children: [
                Icon(Icons.pause_outlined),
              ],
            ),
            Row(
              children: [
                Container(
                    child: Row(children: [
                      Text('VOTE'),
                      Text('HIDE'),
                    ]),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    )),
                Text('10k Votes'),
                Icon(Icons.message)
              ],
            ),
          ],
        )),
  );
}
