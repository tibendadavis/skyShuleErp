import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';

import 'package:skyconnect_starter/theme/design.theme.dart';

class DrawerItem extends StatefulWidget {
  final double size;
  final String value;
  bool selected;
  final IconData iconData;
  final IconData? iconData2;
  final Function onTap;
  final Function onHover;
  final List? submenu1;
  final List? submenu2;
  final List? submenu3;
  final List? submenu4;
  final List? submenu5;
  final List? submenu6;
  final List? submenu7;
  final List? submenu8;
  final List? submenu9;
  final List? submenu10;
  final List? submenu011;
  final List? submenu012;
  final List? submenu11;
  final List? submenu12;
  final List? submenu13;
  final List? submenu14;
  final List? submenu31;
  final List? submenu32;
  final List? submenu33;
  final List? submenu34;
  final List? submenu41;
  final List? submenu42;
  final List? submenu43;
  final List? submenu44;
  final List? submenu45;
  final String? submenu1ex;
  final String? submenu3ex;
  final String? submenu4ex;
  final Widget? link;
  DrawerItem({
    super.key,
    required this.size,
    required this.value,
    required this.iconData,
    this.iconData2,
    required this.onTap,
    required this.onHover,
    required this.selected,
    this.submenu1,
    this.submenu2,
    this.submenu3,
    this.submenu4,
    this.submenu5,
    this.submenu6,
    this.submenu7,
    this.submenu8,
    this.submenu9,
    this.submenu10,
    this.submenu011,
    this.submenu012,
    this.submenu11,
    this.submenu12,
    this.submenu13,
    this.submenu14,
    this.submenu31,
    this.submenu32,
    this.submenu33,
    this.submenu34,
    this.submenu41,
    this.submenu42,
    this.submenu43,
    this.submenu44,
    this.submenu45,
    this.link,
    this.submenu1ex,
    this.submenu3ex,
    this.submenu4ex,
  });

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  void initState() {
    // isSelected = widget.selected;
    super.initState();
  }

  late GlobalKey<NavigatorState> navigatorKey;
  bool expanded = false;
  var isSelected = false;
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
              setState(() {
                isSelected = !isSelected;
              });
              widget.onTap(widget.selected);
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
                ),
                decoration: BoxDecoration(
                    color:
                        isSelected ? Palette().textColor : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 8.5)),
                child: ListTileTheme(
                  dense: true,
                  horizontalTitleGap: 0.0,
                  contentPadding: EdgeInsets.all(0),
                  minVerticalPadding: -10,
                  minLeadingWidth: 30,
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 25),
                    tilePadding: EdgeInsets.all(0),
                    onExpansionChanged: (value) {
                      if (value) {
                        setState(() {
                          expanded = true;
                        });
                      } else {
                        setState(() {
                          expanded = false;
                        });
                      }
                    },
                    trailing: widget.size == 90
                        ? const Offstage()
                        : widget.iconData2 != null
                            ? Icon(
                                expanded
                                    ? Icons.keyboard_arrow_up_outlined
                                    : widget.iconData2,
                                size: 20,
                                color: !isSelected
                                    ? Palette().textColor
                                    : Palette().primaryColor,
                              )
                            : Offstage(),
                    leading: widget.size == 90
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
                            size: 20,
                            color: !isSelected
                                ? Palette().textColor
                                : Palette().primaryColor,
                          ),
                    title: widget.size == 90
                        ? const Offstage()
                        : InkWell(
                            onTap: () {
                              if (widget.link! != "") {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyHomePage(
                                    page: widget.link!,
                                  ),
                                ));
                              }
                              // Navigator.of(push(
                              //Navigator.of(context).context,
                              // MaterialPageRoute(
                              //     builder: (_) => MyHomePage(
                              //           page: widget.link!,
                              //         )));
                              // LayoutBuilder(builder: (context, constraints) {
                              //   if (Responsive.isDesktop(context)) {
                              //     return desktopScaffold(
                              //       page: widget.link!,
                              //     );
                              //   } else if (Responsive.isTablet(context)) {
                              //     return tabletScaffold(page: widget.link!);
                              //   } else {
                              //     return mobileScaffold(page: widget.link!);
                              //   }
                              // });
                            },
                            child: Heading5(
                              value: widget.value,
                              color: !isSelected
                                  ? Palette().textColor
                                  : Palette().primaryColor,
                            ),
                          ),
                    children: [
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu1 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                minLeadingWidth: 22,
                                onTap: () {
                                  if (widget.submenu1![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu1![1],
                                      ),
                                    ));
                                },
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu1![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu1![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu1ex == null
                          ? const Offstage()
                          : ExpansionTile(
                              iconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              collapsedIconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              childrenPadding: EdgeInsets.only(left: 20),
                              tilePadding: EdgeInsets.all(0),
                              title: Heading6(
                                value: widget.submenu1ex!,
                                color: !isSelected
                                    ? Palette().textColor
                                    : Palette().primaryColor,
                              ),
                              children: [
                                widget.size == 90 || widget.submenu11 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu11![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu11![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu11![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu11![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu12 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu12![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu12![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu12![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu12![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu13 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu13![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu13![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu13![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu13![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu14 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu14![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu14![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu14![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu14![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu2 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu2![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu2![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu2![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu2![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu3 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu3![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu3![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu3![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu3![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu3ex == null
                          ? const Offstage()
                          : ExpansionTile(
                              iconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              collapsedIconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              childrenPadding: EdgeInsets.only(left: 20),
                              tilePadding: EdgeInsets.all(0),
                              title: Heading6(
                                value: widget.submenu3ex!,
                                color: !isSelected
                                    ? Palette().textColor
                                    : Palette().primaryColor,
                              ),
                              children: [
                                widget.size == 90 || widget.submenu31 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu31![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu31![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu31![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu31![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu32 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu32![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu32![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu32![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu32![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu33 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu33![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu33![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu33![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu33![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu34 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu34![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu34![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu34![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu34![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu4 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu4![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu4![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu4![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu4![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu4ex == null
                          ? const Offstage()
                          : ExpansionTile(
                              iconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              collapsedIconColor: !isSelected
                                  ? Colors.white
                                  : Palette().primaryColor,
                              childrenPadding: EdgeInsets.only(left: 20),
                              tilePadding: EdgeInsets.all(0),
                              title: Heading6(
                                value: widget.submenu4ex!,
                                color: !isSelected
                                    ? Palette().textColor
                                    : Palette().primaryColor,
                              ),
                              children: [
                                widget.size == 90 || widget.submenu41 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu41![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu42![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu41![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu41![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu42 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu42![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu42![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu42![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu42![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu43 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu43![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu43![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu43![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu43![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu44 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu44![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu44![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu44![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu44![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                                widget.size == 90 || widget.submenu45 == null
                                    ? const Offstage()
                                    : InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            if (widget.submenu45![1] != null)
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage(
                                                  page: widget.submenu45![1],
                                                ),
                                              ));
                                          },
                                          minLeadingWidth: 22,
                                          dense: true,
                                          contentPadding: EdgeInsets.all(0),
                                          horizontalTitleGap: 5,
                                          leading: Icon(
                                            widget.submenu45![2],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                            size: 20,
                                          ),
                                          title: Heading6(
                                            value: widget.submenu45![0],
                                            color: !isSelected
                                                ? Palette().textColor
                                                : Palette().primaryColor,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu5 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu5![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu5![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu5![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu5![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu6 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu6![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu6![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu6![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu6![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu7 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu7![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu7![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu7![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu7![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu8 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu8![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu8![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu8![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu8![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu9 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu9![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu9![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu9![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu9![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu10 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu10![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu10![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu10![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu10![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                      widget.iconData2 == null ||
                              widget.size == 90 ||
                              widget.submenu011 == null
                          ? const Offstage()
                          : InkWell(
                              child: ListTile(
                                onTap: () {
                                  if (widget.submenu011![1] != null)
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                        page: widget.submenu011![1],
                                      ),
                                    ));
                                },
                                minLeadingWidth: 22,
                                dense: true,
                                contentPadding: EdgeInsets.all(0),
                                horizontalTitleGap: 5,
                                leading: Icon(
                                  widget.submenu7![2],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                  value: widget.submenu011![0],
                                  color: !isSelected
                                      ? Palette().textColor
                                      : Palette().primaryColor,
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
