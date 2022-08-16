import 'dart:io';

class DirectoryModel {
  final Directory dir;

  DirectoryModel get parent => DirectoryModel(dir: dir.parent);

  DirectoryModel({
    required this.dir,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DirectoryModel && other.dir == dir;
  }

  @override
  int get hashCode => dir.hashCode;
}
