import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        color: Color.fromARGB(255, 52, 51, 51),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JOHN DOE',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10MIN AGO',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.more_vert),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Food waste or food loss refers to uneaten or discarded food',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
              'Some avenues that can be explored are educating farmers on good storage practices, recycling and composting, providing transportation and storage facilities, re-distributing leftover food from parties and events, and setting up compost plants and food waste management platforms.'),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.pause_outlined),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(8),
                      child: Row(children: [
                        Text(
                          'VOTE',
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'HIDE',
                          style: TextStyle(color: Colors.red),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('10k Votes'),
                ],
              )),
              Expanded(
                child: Icon(Icons.message),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
