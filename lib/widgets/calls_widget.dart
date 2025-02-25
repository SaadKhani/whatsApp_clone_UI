import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (BuildContext context, int ind) {
        return ListTile(
          leading: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage('assets/images/images${ind + 1}.jpeg')),
          title: Text(
            'friend${ind + 1}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              if (ind <= 4) Icon(Icons.call_made),
              if (ind > 4)
                Icon(
                  Icons.call_received,
                  color: Colors.red,
                ),
              Text('(1) Today 12:30 AM'),
            ],
          ),
          trailing: Icon(Icons.phone),
        );
      },
    );
  }
}
