import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_commander/src/panel.dart';

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  State<Window> createState() => _WindowState();
}

class _WindowState extends State<Window> {
  @override
  void initState() {
    super.initState();
    Directory.current.listSync().forEach((dir) {
      print(dir.absolute.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.green,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Panel()),
                    Expanded(
                      child: Container(
                        color: Colors.green[200],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.red[200],
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
