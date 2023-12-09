import 'package:flutter/material.dart';

class TargetPage extends StatefulWidget {
  const TargetPage({super.key});

  @override
  State<TargetPage> createState() => _TargetPageState();
}

class _TargetPageState extends State<TargetPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 171, 164, 164),
                          ),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Divider(
              color: Colors.white,
            ),
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
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 171, 164, 164),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 5, right: 0, bottom: 0),
                child: Column(
                  children: [
                    Text(
                        'Hre comes the comment and below this we will have to get the reply to this comment'),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_border_outlined),
                        Icon(Icons.share)
                      ],
                    )
                  ],
                )),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 5, right: 0, bottom: 0),
              child: Text(
                'Replies : ',
                style: TextStyle(
                  color: Color.fromARGB(255, 171, 164, 164),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, top: 5, right: 0, bottom: 0),
              child: Column(
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
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 171, 164, 164),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 5, right: 0, bottom: 0),
                    child: Text(
                        'Hre comes the comment and below this we will have to get the reply to this comment'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
