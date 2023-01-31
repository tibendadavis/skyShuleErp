// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/app_drawer/drawer_item.comp.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/pages/home/home.pg.dart';
import 'package:skyconnect_starter/screens/academicYearDetails.scrn.dart';
import 'package:skyconnect_starter/screens/accountManagement.scrn.dart';
import 'package:skyconnect_starter/screens/assignment.scrn.dart';
import 'package:skyconnect_starter/screens/attendanceReport.scrn.dart';
import 'package:skyconnect_starter/screens/billing.scrn.dart';
import 'package:skyconnect_starter/screens/bookBinding.scrn.dart';
import 'package:skyconnect_starter/screens/bookCategory.scrn.dart';
import 'package:skyconnect_starter/screens/bookIssue.scrn.dart';
import 'package:skyconnect_starter/screens/bookLost.scrn.dart';
import 'package:skyconnect_starter/screens/bookReturn.scrn.dart';
import 'package:skyconnect_starter/screens/bookReturnSetting.scrn.dart';
import 'package:skyconnect_starter/screens/books.scrn.dart';
import 'package:skyconnect_starter/screens/certificateType.scrn.dart';
import 'package:skyconnect_starter/screens/classAllocation.scrn.dart';
import 'package:skyconnect_starter/screens/classLevels.scrn.dart';
import 'package:skyconnect_starter/screens/classNotes.scrn.dart';
import 'package:skyconnect_starter/screens/classRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/classSubjects.scrn.dart';
import 'package:skyconnect_starter/screens/classes.scrn.dart';
import 'package:skyconnect_starter/screens/combinedReports.scrn.dart';
import 'package:skyconnect_starter/screens/compose.scrn.dart';
import 'package:skyconnect_starter/screens/customCertificate.scrn.dart';
import 'package:skyconnect_starter/screens/defaultGrading.scrn.dart';
import 'package:skyconnect_starter/screens/department.scrn.dart';
import 'package:skyconnect_starter/screens/designation.scrn.dart';
import 'package:skyconnect_starter/screens/employeeAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/employeeBonus.scrn.dart';
import 'package:skyconnect_starter/screens/employeeLeave.scrn.dart';
import 'package:skyconnect_starter/screens/employeeSalary.scrn.dart';
import 'package:skyconnect_starter/screens/enrollment.scrn.dart';
import 'package:skyconnect_starter/screens/exFaculty.scrn.dart';
import 'package:skyconnect_starter/screens/examAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/examGroup.scrn.dart';
import 'package:skyconnect_starter/screens/examschedule.scrn.dart';
import 'package:skyconnect_starter/screens/faculty.scrn.dart';
import 'package:skyconnect_starter/screens/favorite.scrn.dart';
import 'package:skyconnect_starter/screens/feeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/feePayment.scrn.dart';
import 'package:skyconnect_starter/screens/feeReceipts.scrn.dart';
import 'package:skyconnect_starter/screens/fileManagement.scrn.dart';
import 'package:skyconnect_starter/screens/financialYearDetails.scrn.dart';
import 'package:skyconnect_starter/screens/generateCertficate.scrn.dart';
import 'package:skyconnect_starter/screens/hostels.scrn.dart';
import 'package:skyconnect_starter/screens/humanResource.scrn.dart';
import 'package:skyconnect_starter/screens/idCards.scrn.dart';
import 'package:skyconnect_starter/screens/inbox.scrn.dart';
import 'package:skyconnect_starter/screens/institutionAdmin.scrn.dart';
import 'package:skyconnect_starter/screens/institutionDetails.scrn.dart';
import 'package:skyconnect_starter/screens/institutionSettings.scrn.dart';
import 'package:skyconnect_starter/screens/invoiceReport.scrn.dart';
import 'package:skyconnect_starter/screens/itemCategory.scrn.dart';
import 'package:skyconnect_starter/screens/itemReport.scrn.dart';
import 'package:skyconnect_starter/screens/leaveCategory.scrn.dart';
import 'package:skyconnect_starter/screens/lessonPlan.scrn.dart';
import 'package:skyconnect_starter/screens/listsubjects.scrn.dart';
import 'package:skyconnect_starter/screens/liveStudies.scrn.dart';
import 'package:skyconnect_starter/screens/manage_students.scrn.dart';
import 'package:skyconnect_starter/screens/mark.scrn.dart';
import 'package:skyconnect_starter/screens/members.scrn.dart';
import 'package:skyconnect_starter/screens/membersHostel.scrn.dart';
import 'package:skyconnect_starter/screens/minorSchoolExams.scrn.dart';
import 'package:skyconnect_starter/screens/newsBoard.scrn.dart';
import 'package:skyconnect_starter/screens/onlineDiscussion.scrn.dart';
import 'package:skyconnect_starter/screens/parents.scrn.dart';
import 'package:skyconnect_starter/screens/payroll.scrn.dart';
import 'package:skyconnect_starter/screens/promotion.scrn.dart';
import 'package:skyconnect_starter/screens/purchaseOrder.scrn.dart';
import 'package:skyconnect_starter/screens/requestOrder.scrn.dart';
import 'package:skyconnect_starter/screens/schoolExam.scrn.dart';
import 'package:skyconnect_starter/screens/sent.scrn.dart';
import 'package:skyconnect_starter/screens/signature.scrn.dart';
import 'package:skyconnect_starter/screens/singleReports.scrn.dart';
import 'package:skyconnect_starter/screens/specialGradeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/specialGrading.scrn.dart';
import 'package:skyconnect_starter/screens/store.scrn.dart';
import 'package:skyconnect_starter/screens/storeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/storeItem.scrn.dart';
import 'package:skyconnect_starter/screens/storeType.scrn.dart';
import 'package:skyconnect_starter/screens/streamSubjectTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/streams.scrn.dart';
import 'package:skyconnect_starter/screens/studentAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/studentLeave.scrn.dart';
import 'package:skyconnect_starter/screens/supplier.scrn.dart';
import 'package:skyconnect_starter/screens/supplierType.scrn.dart';
import 'package:skyconnect_starter/screens/supportingStaff.scrn.dart';
import 'package:skyconnect_starter/screens/syllabus.scrn.dart';
import 'package:skyconnect_starter/screens/teacher.scrn.dart';
import 'package:skyconnect_starter/screens/teacherOnDuty.scrn.dart';
import 'package:skyconnect_starter/screens/terms.scrn.dart';
import 'package:skyconnect_starter/screens/trash.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class skyShuleDrawer extends StatefulWidget {
  final double? size;
  final bool? menu;
  final bool? selected;
  final Function? onTap;
  const skyShuleDrawer(
      {super.key, this.size, this.onTap, this.menu, this.selected});

  @override
  State<skyShuleDrawer> createState() => _skyShuleDrawerState();
}

class _skyShuleDrawerState extends State<skyShuleDrawer> {
  late double _drawerSize;
  var test = false;

  @override
  void initState() {
    _drawerSize = widget.size!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late List<Map> items = [
      {
        "size": widget.size!,
        "link": HomePage(),
        "value": "Dashboard",
        "iconData": Icons.dashboard_rounded,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Data Management",
        "iconData": Icons.dataset_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Department", department(), Icons.group],
        "submenu2": [
          "Designation",
          designation(),
          Icons.supervisor_account_outlined
        ],
        "submenu3": ["Class Level", classLevels(), Icons.class_rounded],
        "submenu4": [
          "Academic Year Details",
          academicYearDetails(),
          Icons.date_range_rounded
        ],
        "submenu5": [
          "Financial Year",
          financialYearDetails(),
          Icons.money_rounded
        ],
      },
      {
        "size": widget.size!,
        "value": "Faculty Management",
        "iconData": Icons.pie_chart_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Faculty", faculty(), Icons.group],
        "submenu2": [
          "Enrollment",
          enrollment(),
          Icons.add_circle_outline_rounded
        ],
        "submenu3": [
          "Human Resource",
          humanResource(),
          Icons.handshake_rounded
        ],
        "submenu4": ["Ex-Faculty", exFaculty(), Icons.delete_sweep_outlined],
      },
      {
        "size": widget.size!,
        "value": "Users",
        "iconData": Icons.manage_accounts_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Students", manageStudents(), Icons.person],
        "submenu2": ["Parents", parents(), Icons.supervisor_account_outlined],
        "submenu3": ["Teachers", teachers(), Icons.person],
        "submenu4": [
          "Supporting Staff",
          supportingStaff(),
          Icons.groups_outlined
        ],
      },
      {
        "size": widget.size!,
        "value": "Class",
        "link": classes(),
        "iconData": Icons.class_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Streams",
        "link": streams(),
        "iconData": Icons.stream_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Subjects",
        "iconData": Icons.subject_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "List of Subjects",
          listSubjects(),
          Icons.subject_outlined
        ],
        "submenu2": ["Class Subject", classSubjects(), Icons.subject_outlined],
        "submenu3": [
          "Stream Subject Teacher",
          streamSubjectTeacher(),
          Icons.subject_outlined
        ],
        "submenu4ex": "Teaching Tools",
        "submenu4.1": ["Syllabus", syllabus(), Icons.view_list_outlined],
        "submenu4.2": ["Assignments", assignment(), Icons.my_library_books],
        "submenu4.3": ["Lesson Plan", lessonPlan(), Icons.my_library_books],
      },
      {
        "size": widget.size!,
        "value": "Grading",
        "iconData": Icons.grading_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Default Grading",
          defaultGrading(),
          Icons.grading_outlined,
        ],
        "submenu2": [
          "Special Grade Category",
          specialGradeCategory(),
          Icons.grading_outlined,
        ],
        "submenu3": [
          "Special Grading",
          specialGrading(),
          Icons.grading_outlined,
        ],
      },
      {
        "size": widget.size!,
        "value": "Terms",
        "link": terms(),
        "iconData": Icons.signal_cellular_alt_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Exams",
        "iconData": Icons.quiz_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1ex": "Setting",
        "submenu2": ["Exam Schedule", examSchedule(), Icons.extension],
        "submenu3ex": "Reports",
        "submenu4": [
          "Minor School Exams",
          minorSchoolExams(),
          Icons.description
        ],
        "submenu1.1": ["Exam Groups", examGroup(), Icons.text_snippet_outlined],
        "submenu1.2": [
          "School Exams",
          schoolExams(),
          Icons.text_snippet_outlined
        ],
        "submenu1.3": [
          "Class Allocation",
          classAllocations(),
          Icons.text_snippet_outlined
        ],
        "submenu3.1": [
          "Single Reports",
          singleReports(),
          Icons.text_snippet_outlined
        ],
        "submenu3.2": [
          "Combined Reports",
          combinedReports(),
          Icons.text_snippet_outlined
        ],
      },
      {
        "size": widget.size!,
        "value": "Mark",
        "link": mark(),
        "iconData": Icons.mark_email_read_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Certificate",
        "iconData": Icons.document_scanner_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Certificate Type",
          certificateType(),
          Icons.document_scanner_rounded
        ],
        "submenu2": [
          "View Template",
          customCertificate(),
          Icons.document_scanner_rounded
        ],
        "submenu3": [
          "Generate Certificate",
          generateCertificate(),
          Icons.document_scanner_rounded
        ],
      },
      {
        "size": widget.size!,
        "value": "ID Cards",
        "link": idCards(),
        "iconData": Icons.perm_identity_rounded,
        "selected": [false],
      },
      {
        "size": widget.size!,
        "value": "Class Routine",
        "link": classRoutine(),
        "iconData": Icons.route_outlined,
        "selected": [false],
      },
      {
        "size": widget.size!,
        "value": "Attendance",
        "iconData": Icons.content_paste,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Student Attendance", studentAttendance(), Icons.groups],
        "submenu2": [
          "Employee Attendance",
          employeeAttendance(),
          Icons.badge_outlined
        ],
        "submenu3": [
          "Exam Attendance",
          examAttendance(),
          Icons.airline_seat_recline_normal
        ],
        "submenu4": ["Teacher on Duty", teacherOnDuty(), Icons.notifications],
        "submenu5": ["Attendance Report", attendanceReport(), Icons.group],
      },
      {
        "size": widget.size!,
        "value": "News & Announcements",
        "link": newsBoard(),
        "iconData": Icons.newspaper_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Hostel Management",
        "iconData": Icons.house_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Hostel", hostels(), Icons.airline_seat_individual_suite],
        "submenu2": ["Members", membersHostel(), Icons.how_to_reg],
      },
      {
        "size": widget.size!,
        "value": "Library",
        "iconData": Icons.library_add_check_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Book Category", bookCategory(), Icons.book],
        "submenu2": ["Search Books", books(), Icons.book],
        "submenu3": ["Book Issue", bookIssue(), Icons.book],
        "submenu4": ["Book Return Settings", bookReturnSetting(), Icons.book],
        "submenu5": ["Book Return", bookReturn(), Icons.book],
        "submenu6": ["Book Lost", bookLost(), Icons.book],
        "submenu7": ["Book Binding", bookBinding(), Icons.book],
      },
      {
        "size": widget.size!,
        "value": "Promotion",
        "link": promotion(),
        "iconData": Icons.hiking,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "eResources",
        "iconData": Icons.movie_creation_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Files", fileManagement(), Icons.file_copy_sharp],
        "submenu2": [
          "Live Studies",
          liveStudies(),
          Icons.videocam,
        ],
        "submenu3": ["Class Notes", classNotes(), Icons.note_alt_sharp],
        "submenu4": ["Online Discussion", onlineDiscussion(), Icons.forum],
      },
      {
        "size": widget.size!,
        "value": "Finance Management",
        "iconData": Icons.balance_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Account Management",
          accountManagement(),
          Icons.balance_rounded
        ],
        "submenu2": ["Fee Category", feeCategory(), Icons.balance_rounded],
        "submenu3": ["Fee Payment", feePayment(), Icons.balance_rounded],
        "submenu4": ["Fee Receipts", feeReceipts(), Icons.balance_rounded],
      },
      {
        "size": widget.size!,
        "value": "Payroll Management",
        "iconData": Icons.payment_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Employee Salary",
          employeeSalary(),
          Icons.payment_rounded
        ],
        "submenu2": ["Employee Bonus", employeeBonus(), Icons.payment_rounded],
        "submenu3": ["Payroll", payroll(), Icons.payment_rounded],
      },
      {
        "size": widget.size!,
        "value": "Leave Management",
        "iconData": Icons.leave_bags_at_home_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Leave category",
          leaveCategory(),
          Icons.leave_bags_at_home_rounded
        ],
        "submenu2": [
          "Employee Leave",
          employeeLeave(),
          Icons.leave_bags_at_home_rounded
        ],
        "submenu3": [
          "Student Leave",
          studentLeave(),
          Icons.leave_bags_at_home_rounded
        ],
      },
      {
        "size": widget.size!,
        "value": "Inventory & Assets",
        "iconData": Icons.inventory_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Store Category",
          storeCategory(),
          Icons.inventory_rounded
        ],
        "submenu2": [
          "Store Type",
          storeType(),
          Icons.inventory_rounded,
        ],
        "submenu3": ["Store", store(), Icons.inventory_rounded],
        "submenu4": ["Item Category", itemCategory(), Icons.inventory_rounded],
        "submenu5": ["Store Item", storeItem(), Icons.inventory_rounded],
        "submenu6": ["Supplier Type", supplierType(), Icons.inventory_rounded],
        "submenu7": ["Supplier", supplier(), Icons.inventory_rounded],
        "submenu8": [
          "Purchase Order",
          purchaseOrder(),
          Icons.inventory_rounded
        ],
        "submenu9": ["Request Order", requestOrder(), Icons.inventory_rounded],
        "submenu10": ["Billing", billing(), Icons.inventory_rounded],
        "submenu3ex": "Inventory Reports",
        "submenu3.1": [
          "Item Reports",
          itemReport(),
          Icons.text_snippet_outlined
        ],
        "submenu3.2": [
          "Invoice Reports",
          invoiceReport(),
          Icons.text_snippet_outlined
        ],
      },
      {
        "size": widget.size!,
        "value": "Messages",
        "iconData": Icons.message_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Compose", compose(), Icons.create],
        "submenu2": [
          "Inbox",
          inbox(),
          Icons.inbox_rounded,
        ],
        "submenu3": ["Sent", sent(), Icons.email_outlined],
        "submenu4": [
          "Favorite",
          favorite(),
          Icons.star_border_purple500_rounded
        ],
        "submenu5": ["Trash", trash(), Icons.delete],
      },
      {
        "size": widget.size!,
        "value": "Signature",
        "link": signature(),
        "iconData": Icons.draw_rounded,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Settings",
        "iconData": Icons.settings,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Institution Details",
          institutionDetails(),
          Icons.settings_suggest_rounded
        ],
        "submenu2": [
          "Institution Settings",
          institutionSettings(),
          Icons.settings_suggest_rounded
        ],
        "submenu3": [
          "Institution Admin",
          institutionAdmin(),
          Icons.settings_suggest_rounded
        ],
      }
    ];
    var size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 0,
      child: Container(
        width: widget.size,
        decoration: BoxDecoration(
            color: Palette().primaryColor,
            borderRadius: BorderRadius.only(
                topRight: Responsive.isDesktop(context)
                    ? Radius.circular(15)
                    : Radius.circular(0),
                bottomRight: Responsive.isDesktop(context)
                    ? Radius.circular(15)
                    : Radius.circular(0))),
        padding: EdgeInsets.only(
            top: Insets().appPadding / 2, bottom: Insets().appPadding / 2),
        child: Expanded(
          child: ListView(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Palette().textColor,
                  child:
                      ClipOval(child: Image.asset("assets/img/schoolLogo.jpg")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ...List.generate(
                  items.length,
                  (index) => Container(
                        child: DrawerItem(
                            size: items[index]["size"],
                            selected: items[index]["selected"][0],
                            value: items[index]["value"],
                            iconData: items[index]["iconData"],
                            iconData2: items[index]["iconData2"],
                            submenu1: items[index]["submenu1"],
                            submenu2: items[index]["submenu2"],
                            submenu3: items[index]["submenu3"],
                            submenu4: items[index]["submenu4"],
                            submenu5: items[index]["submenu5"],
                            submenu6: items[index]["submenu6"],
                            submenu7: items[index]["submenu7"],
                            submenu8: items[index]["submenu8"],
                            submenu9: items[index]["submenu9"],
                            submenu10: items[index]["submenu10"],
                            submenu011: items[index]["submenu011"],
                            submenu012: items[index]["submenu012"],
                            submenu11: items[index]["submenu1.1"],
                            submenu12: items[index]["submenu1.2"],
                            submenu13: items[index]["submenu1.3"],
                            submenu14: items[index]["submenu1.4"],
                            submenu31: items[index]["submenu3.1"],
                            submenu32: items[index]["submenu3.2"],
                            submenu33: items[index]["submenu3.3"],
                            submenu34: items[index]["submenu3.4"],
                            submenu41: items[index]["submenu4.1"],
                            submenu42: items[index]["submenu4.2"],
                            submenu43: items[index]["submenu4.3"],
                            submenu44: items[index]["submenu4.4"],
                            submenu45: items[index]["submenu4.5"],
                            link: items[index]["link"],
                            submenu1ex: items[index]["submenu1ex"],
                            submenu3ex: items[index]["submenu3ex"],
                            submenu4ex: items[index]["submenu4ex"],
                            onHover: (val) {
                              if (widget.menu!)
                                setState(() {
                                  if (val) {
                                    _drawerSize = 250;
                                  } else {
                                    _drawerSize = 90;
                                  }
                                });
                              if (!widget.menu!)
                                setState(() {
                                  _drawerSize = 250;
                                });
                              widget.onTap!(_drawerSize);
                              widget.onTap!(_drawerSize);
                            },
                            onTap: (val) {
                              setState(() {
                                items[index]["selected"][0] = val;
                                print(items[index]["selected"][0]);
                              });
                            }),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
