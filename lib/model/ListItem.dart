import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubTitle(BuildContext context);
}

class HeadingItem extends ListItem {
  final String heading;
  HeadingItem(this.heading);

  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        color: Colors.white,
        backgroundColor: Colors.greenAccent,
        fontSize: 20.0,
        fontStyle: FontStyle.italic
      )
    );
  }

  Widget buildSubTitle(BuildContext context) => null;
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  Widget buildTitle(BuildContext context) => Text(sender);

  Widget buildSubTitle(BuildContext context) => Text(body);
}
