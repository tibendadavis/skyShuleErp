import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class DrawerItem extends StatefulWidget {
  final double size;
  final String value;
  bool selected;
  final IconData iconData;
  final IconData? iconData2;
  final Function onTap;
  final Function onHover;
  DrawerItem({
    super.key,
    required this.size,
    required this.value,
    required this.iconData,
    this.iconData2,
    required this.onTap,
    required this.onHover,
    required this.selected,
  });

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  void initState() {
    widget.selected = isSelected;
    super.initState();
  }

  bool isSelected = false;
  late bool open;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: Insets().appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              //  widget.onTap();
              setState(() {
                isSelected = !isSelected;
                widget.onTap(isSelected);
              });
            },
            onHover: (val) {
              widget.onHover(val);
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: SizedBox(
              width: widget.size == 90 ? 65 : widget.size - 14,
              child: Container(
                margin: EdgeInsets.only(
                  left: widget.size == 90 ? 23 : Insets().appPadding,
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
                    widget.size == 90
                        ? Center(
                            child: Icon(
                              widget.iconData,
                              size: 20,
                              color: !isSelected
                                  ? Palette().textColor
                                  : Palette().primaryColor,
                            ),
                          )
                        : Icon(
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
                    Spacer(),
                    widget.size == 90
                        ? const Offstage()
                        : widget.iconData2 != null
                            ? Icon(
                                widget.iconData2,
                                size: 20,
                                color: !isSelected
                                    ? Palette().textColor
                                    : Palette().primaryColor,
                              )
                            : Offstage(),
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
