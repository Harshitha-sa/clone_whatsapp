import 'package:clone_whatsapp/models/chatmodel.dart';
import 'package:clone_whatsapp/ui_elements/chatcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = new TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );
  }

  List<WhatsAppDetails> details = [
    WhatsAppDetails(
      'Harshitha',
      "hello!",
      '16:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'hk',
      "hey!",
      '15:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'mum',
      "come home",
      '12:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'dad',
      "wru?",
      '16:10',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'Mohit',
      "oyyy!",
      '12:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'Fessa',
      "helllo!",
      '16:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'germy',
      "hello!",
      '16:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'tom',
      "hello!",
      '16:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'rob',
      "hello!",
      '16:09',
      MessageStatus.Delivered,
    ),
    WhatsAppDetails(
      'bob',
      "hello!",
      '16:09',
      MessageStatus.Delivered,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Color whatsAppColor = Color(0xFF32642E);
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(child: Icon(CupertinoIcons.camera)),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              //TODO
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              //TODO
            },
          )
        ],
        backgroundColor: whatsAppColor,
        title: Text('WhatsApp'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO
        },
        child: Icon(Icons.chat),
        backgroundColor: whatsAppColor,
      ),
      body: ListView.builder(
          itemCount: details.length,
          itemBuilder: (BuildContext context, int count) {
            return WhatsAppCard(
              name: details[count].name,
              message: details[count].message,
              time: details[count].time,
              status: details[count].status,
            );
          }),
    );
  }
}