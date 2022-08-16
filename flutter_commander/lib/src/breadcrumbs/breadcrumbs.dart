import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_commander/src/breadcrumbs/breadcrumb.dart';
import 'package:flutter_commander/src/breadcrumbs/root_icon.dart';
import 'package:flutter_commander/src/common/models/directory_model.dart';

class Breadcrumbs extends StatefulWidget {
  final Directory dir;

  const Breadcrumbs({
    required this.dir,
    Key? key,
  }) : super(key: key);

  @override
  State<Breadcrumbs> createState() => _BreadcrumbsState();
}

class _BreadcrumbsState extends State<Breadcrumbs> {
  DirectoryModel? _dir;

  @override
  void initState() {
    super.initState();
    _dir = DirectoryModel(dir: widget.dir);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const RootIcon(),
          ..._getBreadcrumbs(_dir!),
        ],
      ),
    );
  }

  List<Breadcrumb> _getBreadcrumbs(DirectoryModel dir) {
    final crumds = <Breadcrumb>[];

    DirectoryModel currentDir = dir;
    while (currentDir.dir.path != '/') {
      crumds.add(
        Breadcrumb(
          dir: currentDir,
          onTap: (dir) {
            setState(() {
              _dir = dir;
            });
          },
        ),
      );
      currentDir = currentDir.parent;
    }

    return crumds.reversed.toList();
  }
}
