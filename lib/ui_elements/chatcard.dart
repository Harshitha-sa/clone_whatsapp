import 'package:clone_whatsapp/models/chatmodel.dart';
import 'package:flutter/material.dart';

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