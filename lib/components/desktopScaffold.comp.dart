import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class desktopScaffold extends StatefulWidget {
  final Widget page;
  const desktopScaffold({super.key, required this.page});

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height + 100,
        child: Container(
          color: Palette().primaryColorLight,
          child: widget.page,
        ),
      ),
    );
  }
}
