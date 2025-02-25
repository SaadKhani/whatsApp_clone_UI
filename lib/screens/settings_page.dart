import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E55),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        title: Text(
          'Settings',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/images9.jpeg'),
              ),
              title: Text(
                'Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('hey there! i am using whatsApp.'),
            ),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.manage_accounts,
                size: 30,
              ),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('Privacy,Security,Change number'),
            ),
            ListTile(
              leading: Icon(
                Icons.chat,
                size: 30,
              ),
              title: Text(
                'Chat',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('Theme,Wallpaper,Chat history'),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 30,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('message,group,& call tone'),
            ),
            ListTile(
              leading: Icon(
                Icons.data_usage,
                size: 30,
              ),
              title: Text(
                'Storage and Data',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('Network usage,auto download'),
            ),
            ListTile(
              leading: Icon(
                Icons.manage_accounts,
                size: 30,
              ),
              title: Text(
                'Help',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              subtitle: Text('Help center,contact us, privacy policy'),
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_rounded,
                size: 30,
              ),
              title: Text(
                'Invite a friend',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Text('from'),
            Text(
              'Facebook',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
