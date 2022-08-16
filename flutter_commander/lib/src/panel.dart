import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_commander/src/breadcrumbs/breadcrumbs.dart';

class Panel extends StatefulWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Breadcrumbs(
            dir: Directory.current,
          ),
        ],
      ),
    );
  }
}
