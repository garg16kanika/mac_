import 'package:flutter/material.dart';
import 'package:mac_task/Horizontal_container.dart';

class TargetPage extends StatelessWidget {
  const TargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
        ],
      ),
      body: Column(
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
              Icon(Icons.message),
              Text('59k comments'),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Icon(Icons.person_off),
              Column(
                children: [
                  Text('JOHN DOE'),
                  Text('10MIN AGO'),
                ],
              ),
            ],
          ),
          Text(
              'Hre comes the comment and below this we will have to get the reply to this comment'),
          Text('replies : '),
          Row(
            children: [
              Icon(Icons.person_off),
              Column(
                children: [
                  Text('JOHN DOE'),
                  Text('10MIN AGO'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
