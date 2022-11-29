import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class DrawerItem extends StatefulWidget {
  final double size;
  final String value;
  final IconData iconData;
  final Function onTap;
  const DrawerItem(
      {super.key,
      required this.size,
      required this.value,
      required this.iconData,
      required this.onTap});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      //padding: EdgeInsets.only(top: Insets().appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              widget.onTap();
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: SizedBox(
              width: 235,
              child: Container(
                margin: EdgeInsets.only(
                  left: Insets().appPadding,
                  bottom: Insets().appPadding / 4,
                ),
                padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                    top: Insets().appPadding / 3,
                    bottom: Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color:
                        isSelected ? Palette().textColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(Insets().appRadiusMin)),
                child: Row(
                  children: [
                    Icon(
                      widget.iconData,
                      size: 17,
                      color: !isSelected
                          ? Palette().textColor
                          : Palette().primaryColor,
                    ),
                    widget.size == 90
                        ? const Offstage()
                        : SizedBox(
                            width: Insets().appGap,
                          ),
                    widget.size == 90
                        ? const Offstage()
                        : Heading5(
                            value: widget.value,
                            color: !isSelected
                                ? Palette().textColor
                                : Palette().primaryColor,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
