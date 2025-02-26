import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pic = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 20,
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(pic[0]),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pic[1],
                    // style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'online',
                    // ignore: deprecated_member_use
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  )
                ],
              )
            ],
          ),
          actions: [
            Icon(Icons.phone),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.video_call),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.jpg'))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 1, spreadRadius: 1)
                    ],
                    color: Color(0xFFFFF3C2),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Messages and calls are end to end \n enscrypted. no one can read or \n listen to it.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int ind) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: ClipPath(
                          clipper: UpperNipMessageClipper(MessageType.receive),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.white
                                // borderRadius: BorderRadius.circular(2)
                                ),
                            child: Text('hey! How Are You?'),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int ind) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 130, top: 10),
                        child: ClipPath(
                          clipper: LowerNipMessageClipper(MessageType.send),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xFFE4FDCA),
                                borderRadius: BorderRadius.circular(2)),
                            child: Text(
                                'I am fine. Thanks for asking. And what about you?'),
                          ),
                        ),
                      );
                    },
                    itemCount: 100),
              )
            ],
          ),
        ),
        bottomSheet: BottomAppBar(
          color: Colors.white,
          height: 70,
          child: Row(
            children: [
              Icon(
                Icons.emoji_emotions,
                size: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow()],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Message', border: InputBorder.none),
                ),
              ),
              Container(
                height: 50,
                width: 40,
                decoration:
                    BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
                child: Icon(
                  Icons.keyboard_voice_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
