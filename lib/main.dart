import 'package:flutter/material.dart';

import 'category.dart';

void main() {
  final items = List<Category>.generate(
    1200,
    (i) => i % 6 == 0
        ? Category(
            name: "Heading $i",
            color: Colors.greenAccent,
            iconLocation: Icons.accessibility)
        : Category(
            name: "Message body $i",
            color: Colors.blueAccent,
            iconLocation: Icons.access_time),
  );
  runApp(UnitConverterApp(items: items));
}

class UnitConverterApp extends StatelessWidget {
  final List<Category> items;
  UnitConverterApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: items.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = items[index];
            return item;
          },
        ),
      ),
    );
  }
}
