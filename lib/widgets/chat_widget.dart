import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int ind) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'c', arguments: [
                  'assets/images/images${ind + 1}.jpeg',
                  'programmer${ind + 1}'
                ]);
              },
              leading: CircleAvatar(
                radius: 35,
                backgroundImage:
                    AssetImage('assets/images/images${ind + 1}.jpeg'),
              ),
              title: Text(
                'Programmer${ind + 1}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hi,Programmer, How Are you?'),
              trailing: Column(
                children: [
                  Text(
                    '12:01 PM',
                    style: TextStyle(color: Colors.green),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
