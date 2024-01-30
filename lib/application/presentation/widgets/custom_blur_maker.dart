import 'dart:ui';

import 'package:flutter/widgets.dart';

class BlurerMaker extends StatelessWidget {
  const BlurerMaker({super.key, required this.child, required this.show});

  final Widget child;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(visible: !show, child: child),
        Visibility(
          visible: show,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          ),
        ),
      ],
    );
  }
}
