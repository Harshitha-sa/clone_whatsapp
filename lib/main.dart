import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );
  }
  List<WhatsAppDetails> details =[
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
            Tab(
              child: Text("chats"),
            ),
            Tab(
              child: Text("status"),
            ),
            Tab(
              child: Text("calls"),
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

class WhatsAppCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final MessageStatus status;

  WhatsAppCard({
    this.message,
    this.name,
    this.status,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      padding: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.account_circle,
              size: 75.0,
              color: Colors.grey.withOpacity(0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                    Text(
                      message,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 14.0),
            child: Text(time),
          ),
        ],
      ),
    );
  }
}

class WhatsAppDetails {
  String name;
  String message;
  String time;
  MessageStatus status;
  WhatsAppDetails(
      this.name,this.message,this.time,this.status
      );
}

enum MessageStatus { Delivered, Received, Seen }
