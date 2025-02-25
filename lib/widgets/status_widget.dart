import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage('assets/images/images1.jpeg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Status',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Today 12:30 AM',
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
            Text(
              'Recent Updates',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage('assets/images/images2.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'friend 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Today 2:04 PM',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage('assets/images/images3.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'friend 2',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Today 2:18 PM',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage('assets/images/images4.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'friend 3',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Today 7:30 AM',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Viewed Updates',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage('assets/images/images8.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'friend 6',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Today 12:30 AM',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage:
                            AssetImage('assets/images/images7.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'friend 8',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Today 12:30 AM',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
