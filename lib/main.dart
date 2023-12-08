import 'package:flutter/material.dart';
import 'package:mac_task/Horizontal_container.dart';
import 'package:mac_task/vertical_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macverin Task',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IDUTE'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_sharp),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HorizontalContainer('Art'),
                  HorizontalContainer('Fashion'),
                  HorizontalContainer('Tech'),
                  HorizontalContainer('Legal'),
                  HorizontalContainer('Art'),
                  HorizontalContainer('Fashion'),
                  HorizontalContainer('Tech'),
                  HorizontalContainer('Legal'),
                ],
              ),
            ),
            Expanded(
                flex: 7,
                child: ListView(
                  children: [
                    VerticalContainer(context),
                    VerticalContainer(context),
                    VerticalContainer(context),
                    VerticalContainer(context),
                  ],
                ))
          ],
        ));
  }
}
