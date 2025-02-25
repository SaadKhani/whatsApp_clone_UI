import 'package:flutter/material.dart';
import 'package:watsapp_clone_ui/widgets/calls_widget.dart';
import 'package:watsapp_clone_ui/widgets/chat_widget.dart';
import 'package:watsapp_clone_ui/widgets/status_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          // backgroundColor: Color(0xFF075E55),
          title: Text(
            'WattsApp',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            PopupMenuButton(
              onSelected: (value) {
                if (value == 5) {
                  Navigator.pushNamed(context, 'b');
                }
              },
              elevation: 2,
              style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
              // color: Colors.white,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('New BroadCast'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text('Starred messages'),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text('settings'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'CHATS',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Text(
                                '10',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      icon: Text(
                        'STATUS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Tab(
                      icon: Text(
                        'CALLS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  Container(
                    color: Colors.black,
                  ),
                  ChatWidget(),
                  StatusWidget(),
                  CallsWidget()
                ])),
          ],
        ),
      ),
    );
  }
}
