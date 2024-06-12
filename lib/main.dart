import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    var scaffold = Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: ListTile(
                title: Text('Item $index'),
              ),
            );
          }),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Scaffold(
              body: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue,
                      child: ListTile(
                        title: Text('Item $index'),
                      ),
                    );
                  }),
            );
          }
          return Scaffold(
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text('Item $index'),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
