import 'package:flutter/widgets.dart';
import 'package:flutter_commander/src/common/models/directory_model.dart';
import 'package:path/path.dart';

class Breadcrumb extends StatelessWidget {
  final DirectoryModel dir;
  final Function(DirectoryModel) onTap;

  const Breadcrumb({
    required this.dir,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(dir),
      child: Text(
        '> ${basename(dir.dir.path)} ',
        maxLines: 1,
        softWrap: false,
      ),
    );
  }
}
