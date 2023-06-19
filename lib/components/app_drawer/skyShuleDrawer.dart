// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/app_drawer/drawer_item.comp.dart';
import 'package:skyconnect_starter/controllers/globalVariables.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Home/home.pg.dart';
import 'package:skyconnect_starter/screens/Data%20Management/academicYearDetails.scrn.dart';
import 'package:skyconnect_starter/screens/Finance%20Management/accountManagement.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/Teaching%20Tools/assignment.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/attendanceReport.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/billing.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookBinding.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookIssue.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookLost.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookReturn.scrn.dart';
import 'package:skyconnect_starter/screens/Library/bookReturnSetting.scrn.dart';
import 'package:skyconnect_starter/screens/Library/books.scrn.dart';
import 'package:skyconnect_starter/screens/Certificate/certificateType.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/Settings/classAllocation.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/classLevels.scrn.dart';
import 'package:skyconnect_starter/screens/eResources/classNotes.scrn.dart';
import 'package:skyconnect_starter/screens/Class%20Routine/classRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/classSubjects.scrn.dart';
import 'package:skyconnect_starter/screens/Class/classes.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/Reports/combinedReports.scrn.dart';
import 'package:skyconnect_starter/screens/Certificate/customCertificate.scrn.dart';
import 'package:skyconnect_starter/screens/Grading/defaultGrading.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/department.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/designation.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/employeeAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/Payroll%20Management/employeeBonus.scrn.dart';
import 'package:skyconnect_starter/screens/Leave%20Management/employeeLeave.scrn.dart';
import 'package:skyconnect_starter/screens/Payroll%20Management/employeeSalary.scrn.dart';
import 'package:skyconnect_starter/screens/Faculty%20Management/exFaculty.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/examAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/Settings/examGroup.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/examschedule.scrn.dart';
import 'package:skyconnect_starter/screens/Faculty%20Management/faculty.scrn.dart';
import 'package:skyconnect_starter/screens/Messages/favorite.scrn.dart';
import 'package:skyconnect_starter/screens/Finance%20Management/feeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Finance%20Management/feePayment.scrn.dart';
import 'package:skyconnect_starter/screens/Finance%20Management/feeReceipts.scrn.dart';
import 'package:skyconnect_starter/screens/eResources/fileManagement.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/financialYearDetails.scrn.dart';
import 'package:skyconnect_starter/screens/Certificate/generateCertficate.scrn.dart';
import 'package:skyconnect_starter/screens/Hostel%20Management/hostels.scrn.dart';
import 'package:skyconnect_starter/screens/Faculty%20Management/humanResource.scrn.dart';
import 'package:skyconnect_starter/screens/ID%20Cards/idCards.scrn.dart';
import 'package:skyconnect_starter/screens/Messages/inbox.scrn.dart';
import 'package:skyconnect_starter/screens/Settings/institutionAdmin.scrn.dart';
import 'package:skyconnect_starter/screens/Settings/institutionDetails.scrn.dart';
import 'package:skyconnect_starter/screens/Settings/institutionSettings.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/Reports/invoiceReport.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/itemCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/Reports/itemReport.scrn.dart';
import 'package:skyconnect_starter/screens/Leave%20Management/leaveCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/Teaching%20Tools/lessonPlan.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/listsubjects.scrn.dart';
import 'package:skyconnect_starter/screens/eResources/liveStudies.scrn.dart';
import 'package:skyconnect_starter/screens/Users/manage_students.scrn.dart';
import 'package:skyconnect_starter/screens/Mark/mark.scrn.dart';
import 'package:skyconnect_starter/screens/Hostel%20Management/membersHostel.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/minorSchoolExams.scrn.dart';
import 'package:skyconnect_starter/screens/News&Announcements/newsBoard.scrn.dart';
import 'package:skyconnect_starter/screens/eResources/onlineDiscussion.scrn.dart';
import 'package:skyconnect_starter/screens/Users/parents.scrn.dart';
import 'package:skyconnect_starter/screens/Payroll%20Management/payroll.scrn.dart';
import 'package:skyconnect_starter/screens/Promotion/promotion.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/purchaseOrder.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/requestOrder.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/Settings/schoolExam.scrn.dart';
import 'package:skyconnect_starter/screens/Messages/sent.scrn.dart';
import 'package:skyconnect_starter/screens/Signature/signature.scrn.dart';
import 'package:skyconnect_starter/screens/Exams/Reports/singleReports.scrn.dart';
import 'package:skyconnect_starter/screens/Grading/specialGradeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Grading/specialGrading.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/store.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/storeCategory.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/storeItem.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/storeType.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/streamSubjectTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/Streams/streams.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/studentAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/Leave%20Management/studentLeave.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/supplier.scrn.dart';
import 'package:skyconnect_starter/screens/Inventory&Assets/supplierType.scrn.dart';
import 'package:skyconnect_starter/screens/Users/supportingStaff.scrn.dart';
import 'package:skyconnect_starter/screens/Subjects/Teaching%20Tools/syllabus.scrn.dart';
import 'package:skyconnect_starter/screens/Users/teacher.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/teacherOnDuty.scrn.dart';
import 'package:skyconnect_starter/screens/Terms/terms.scrn.dart';
import 'package:skyconnect_starter/screens/Messages/trash.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class skyShuleDrawer extends StatefulWidget {
  final double? size;

  final bool? selected;
  final Function? onTap;
  List<Map>? items;
  skyShuleDrawer({super.key, this.size, this.onTap, this.selected, this.items});

  @override
  State<skyShuleDrawer> createState() => _skyShuleDrawerState();
}

class _skyShuleDrawerState extends State<skyShuleDrawer>
    with AutomaticKeepAliveClientMixin {
  late double _drawerSize;
  ScrollController scrollCont = ScrollController();
  var test = false;
  //ScrollController globalData.scrollController = ScrollController();

  var selected;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    _drawerSize = widget.size!;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // jump to the saved position when the widget is built
      globalData.scrollCont.animateTo(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 1200),
          globalData.drawerPos);
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    globalData.scrollCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    late List<Map> items = [
      {
        "size": widget.size!,
        "link": HomePage(),
        "value": "Dashboard",
        "iconData": Icons.dashboard_rounded,
        "selected": globalData.selected[0],
        "route": "/home"
      },
      {
        "size": widget.size!,
        "value": "Data Management",
        "iconData": Icons.dataset_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[1],
        "submenu1": [
          "Department",
          department(),
          Icons.group,
          "/dataManagement/department"
        ],
        "submenu2": [
          "Designation",
          designation(),
          Icons.supervisor_account_outlined,
          "/dataManagement/designation"
        ],
        "submenu3": [
          "Class Level",
          classLevels(),
          Icons.class_rounded,
          "/dataManagement/classLevel"
        ],
        "submenu4": [
          "Academic Year Details",
          academicYearDetails(),
          Icons.date_range_rounded,
          "/dataManagement/academicYearDetails"
        ],
        "submenu5": [
          "Financial Year",
          financialYearDetails(),
          Icons.money_rounded,
          "/dataManagement/financialYear"
        ],
      },
      {
        "size": widget.size!,
        "value": "Faculty Management",
        "iconData": Icons.pie_chart_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[2],
        "submenu1": [
          "Faculty",
          faculty(),
          Icons.group,
          "/facultyManagement/faculty"
        ],
        // "submenu2": [
        //   "Enrollment",
        //   enrollment(),
        //   Icons.add_circle_outline_rounded,
        //   "/facultyManagement/enrollment"
        // ],
        "submenu3": [
          "Evaluations",
          humanResource(),
          Icons.handshake_rounded,
          "/facultyManagement/HR"
        ],
        "submenu4": [
          "Ex-Faculty",
          exFaculty(),
          Icons.delete_sweep_outlined,
          "/facultyManagement/exFaculty"
        ],
      },
      {
        "size": widget.size!,
        "value": "Users",
        "iconData": Icons.manage_accounts_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[3],
        "submenu1": [
          "Students",
          manageStudents(),
          Icons.person,
          "/users/students"
        ],
        "submenu2": [
          "Parents",
          parents(),
          Icons.supervisor_account_outlined,
          "/users/parents"
        ],
        "submenu3": ["Teachers", teachers(), Icons.person, "/users/teachers"],
        "submenu4": [
          "Supporting Staff",
          supportingStaff(),
          Icons.groups_outlined,
          "/users/supportingStaff"
        ],
      },
      {
        "size": widget.size!,
        "value": "Class",
        "link": classes(),
        "iconData": Icons.class_outlined,
        "selected": globalData.selected[4],
        "route": "/class"
      },
      {
        "size": widget.size!,
        "value": "Streams",
        "link": streams(),
        "iconData": Icons.stream_outlined,
        "selected": globalData.selected[5],
        "route": "/stream"
      },
      {
        "size": widget.size!,
        "value": "Subjects",
        "iconData": Icons.subject_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[6],
        "submenu1": [
          "List of Subjects",
          listSubjects(),
          Icons.subject_outlined,
          "/subject/listSubjects"
        ],
        "submenu2": [
          "Class Subject",
          classSubjects(),
          Icons.subject_outlined,
          "/subject/classSubjects"
        ],
        "submenu3": [
          "Stream Subject Teacher",
          streamSubjectTeacher(),
          Icons.subject_outlined,
          "/subject/streamSubjectTeacher"
        ],
        "submenu4ex": "Teaching Tools",
        "submenu4.1": [
          "Syllabus",
          syllabus(),
          Icons.view_list_outlined,
          "/subject/teachingTools/syllabus"
        ],
        "submenu4.2": [
          "Assignments",
          assignment(),
          Icons.my_library_books,
          "/subject/teachingTools/assignments"
        ],
        "submenu4.3": [
          "Lesson Plan",
          lessonPlan(),
          Icons.my_library_books,
          "/subject/teachingTools/lessonPlan"
        ],
      },
      {
        "size": widget.size!,
        "value": "Grading",
        "iconData": Icons.grading_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[7],
        "submenu1": [
          "Default Grading",
          defaultGrading(),
          Icons.grading_outlined,
          "/grading/defaultGrading"
        ],
        "submenu2": [
          "Special Grade Category",
          specialGradeCategory(),
          Icons.grading_outlined,
          "/grading/specialgradeCategory"
        ],
        "submenu3": [
          "Special Grading",
          specialGrading(),
          Icons.grading_outlined,
          "/grading/specialGrading"
        ],
      },
      {
        "size": widget.size!,
        "value": "Terms",
        "link": terms(),
        "iconData": Icons.signal_cellular_alt_outlined,
        "selected": globalData.selected[8],
        "route": "/terms"
      },
      {
        "size": widget.size!,
        "value": "Exams",
        "iconData": Icons.quiz_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[9],
        "submenu1ex": "Setting",
        "submenu2": [
          "Exam Schedule",
          examSchedule(),
          Icons.schedule,
          "/exams/examSchedule"
        ],
        "submenu3ex": "Reports",
        "submenu4": [
          "Minor School Exams",
          minorSchoolExams(),
          Icons.description,
          "/exams/minorSchoolExams"
        ],
        "submenu1.1": [
          "Exam Groups",
          examGroup(),
          Icons.text_snippet_outlined,
          "/exams/settings/examGroups"
        ],
        "submenu1.2": [
          "School Exams",
          schoolExams(),
          Icons.text_snippet_outlined,
          "/exams/settings/schoolExams"
        ],
        "submenu1.3": [
          "Class Allocation",
          classAllocations(),
          Icons.text_snippet_outlined,
          "/exams/settings/classAllocation"
        ],
        "submenu3.1": [
          "Single Reports",
          singleReports(),
          Icons.text_snippet_outlined,
          "/exams/reports/singleReports"
        ],
        "submenu3.2": [
          "Combined Reports",
          combinedReports(),
          Icons.text_snippet_outlined,
          "/exams/reports/combinedReports"
        ],
      },
      {
        "size": widget.size!,
        "value": "Mark",
        "link": mark(),
        "iconData": Icons.mark_email_read_outlined,
        "selected": globalData.selected[10],
        "route": "/mark"
      },
      {
        "size": widget.size!,
        "value": "Certificate",
        "iconData": Icons.document_scanner_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[11],
        "submenu1": [
          "Certificate Type",
          certificateType(),
          Icons.document_scanner_rounded,
          "/certificate/type"
        ],
        "submenu2": [
          "View Template",
          customCertificate(),
          Icons.document_scanner_rounded,
          "/certificate/viewTemplate"
        ],
        "submenu3": [
          "Generate Certificate",
          generateCertificate(),
          Icons.document_scanner_rounded,
          "/certificate/generate"
        ],
      },
      {
        "size": widget.size!,
        "value": "ID Cards",
        "link": idCards(),
        "iconData": Icons.perm_identity_rounded,
        "selected": globalData.selected[12],
        "route": "/idCards"
      },
      {
        "size": widget.size!,
        "value": "Class Routine",
        "link": classRoutine(),
        "iconData": Icons.route_outlined,
        "selected": globalData.selected[13],
        "route": "/classRoutine"
      },
      {
        "size": widget.size!,
        "value": "Attendance",
        "iconData": Icons.content_paste,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[14],
        "submenu1": [
          "Student Attendance",
          studentAttendance(),
          Icons.groups,
          "/attendance/student"
        ],
        "submenu2": [
          "Employee Attendance",
          employeeAttendance(),
          Icons.badge_outlined,
          "/attendance/employee"
        ],
        "submenu3": [
          "Exam Attendance",
          examAttendance(),
          Icons.airline_seat_recline_normal,
          "/attendance/exam"
        ],
        "submenu4": [
          "Teacher on Duty",
          teacherOnDuty(),
          Icons.notifications,
          "/attendance/teacherOnDuty"
        ],
        "submenu5": [
          "Attendance Report",
          attendanceReport(),
          Icons.group,
          "/attendance/report"
        ],
      },
      {
        "size": widget.size!,
        "value": "News & Announcements",
        "link": newsBoard(),
        "iconData": Icons.newspaper_outlined,
        "selected": globalData.selected[15],
        "route": "/news&announcements"
      },
      {
        "size": widget.size!,
        "value": "Hostel Management",
        "iconData": Icons.house_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[16],
        "submenu1": [
          "Hostel",
          hostels(),
          Icons.airline_seat_individual_suite,
          "/hostelManagement/hostel"
        ],
        "submenu2": [
          "Members",
          membersHostel(),
          Icons.how_to_reg,
          "/hostelManagement/members"
        ],
      },
      {
        "size": widget.size!,
        "value": "Library",
        "iconData": Icons.library_add_check_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[17],
        "submenu1": [
          "Book Category",
          bookCategory(),
          Icons.book,
          "/library/category"
        ],
        "submenu2": ["Search Books", books(), Icons.book, "/library/books"],
        "submenu3": ["Book Issue", bookIssue(), Icons.book, "/library/issue"],
        "submenu4": [
          "Book Return Settings",
          bookReturnSetting(),
          Icons.book,
          "/library/returnSettings"
        ],
        "submenu5": [
          "Book Return",
          bookReturn(),
          Icons.book,
          "/library/return"
        ],
        "submenu6": ["Book Lost", bookLost(), Icons.book, "/library/lost"],
        "submenu7": [
          "Book Binding",
          bookBinding(),
          Icons.book,
          "/library/binding"
        ],
      },
      {
        "size": widget.size!,
        "value": "Promotion",
        "link": promotion(),
        "iconData": Icons.hiking,
        "selected": globalData.selected[18],
        "route": "/promotion"
      },
      {
        "size": widget.size!,
        "value": "eResources",
        "iconData": Icons.movie_creation_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[19],
        "submenu1": [
          "Files",
          fileManagement(),
          Icons.file_copy_sharp,
          "/eResources/files"
        ],
        "submenu2": [
          "Live Studies",
          liveStudies(),
          Icons.videocam,
          "/eResources/liveStudies"
        ],
        "submenu3": [
          "Class Notes",
          classNotes(),
          Icons.note_alt_sharp,
          "/eResources/classNotes"
        ],
        "submenu4": [
          "Online Discussion",
          onlineDiscussion(),
          Icons.forum,
          "/eResources/onlineDiscussion"
        ],
      },
      {
        "size": widget.size!,
        "value": "Finance Management",
        "iconData": Icons.balance_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[20],
        "submenu1": [
          "Account Management",
          accountManagement(),
          Icons.balance_rounded,
          "/financeManagement/account"
        ],
        "submenu2": [
          "Fee Category",
          feeCategory(),
          Icons.balance_rounded,
          "/financeManagement/feeCategory"
        ],
        "submenu3": [
          "Fee Payment",
          feePayment(),
          Icons.balance_rounded,
          "/financeManagement/feePayment"
        ],
        "submenu4": [
          "Fee Receipts",
          feeReceipts(),
          Icons.balance_rounded,
          "/financeManagement/feeReceipts"
        ],
      },
      {
        "size": widget.size!,
        "value": "Payroll Management",
        "iconData": Icons.payment_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[21],
        "submenu1": [
          "Employee Salary",
          employeeSalary(),
          Icons.payment_rounded,
          "/payrollManagement/employeeSalary"
        ],
        "submenu2": [
          "Employee Bonus",
          employeeBonus(),
          Icons.payment_rounded,
          "/payrollManagement/employeeBonus"
        ],
        "submenu3": [
          "Payroll",
          payroll(),
          Icons.payment_rounded,
          "/payrollManagement/payroll"
        ],
      },
      {
        "size": widget.size!,
        "value": "Leave Management",
        "iconData": Icons.flight_takeoff_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[22],
        "submenu1": [
          "Leave category",
          leaveCategory(),
          Icons.flight_takeoff_rounded,
          "/leaveManagement/category"
        ],
        "submenu2": [
          "Employee Leave",
          employeeLeave(),
          Icons.flight_takeoff_rounded,
          "/leaveManagement/employee"
        ],
        "submenu3": [
          "Student Leave",
          studentLeave(),
          Icons.flight_takeoff_rounded,
          "/leaveManagement/student"
        ],
      },
      {
        "size": widget.size!,
        "value": "Inventory & Assets",
        "iconData": Icons.inventory_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[23],
        "submenu1": [
          "Store Category",
          storeCategory(),
          Icons.inventory_rounded,
          "/inventory&Assets/category"
        ],
        "submenu2": [
          "Store Type",
          storeType(),
          Icons.inventory_rounded,
          "/inventory&Assets/type"
        ],
        "submenu3": [
          "Store",
          store(),
          Icons.inventory_rounded,
          "/inventory&Assets/store"
        ],
        "submenu4": [
          "Item Category",
          itemCategory(),
          Icons.inventory_rounded,
          "/inventory&Assets/itemCategory"
        ],
        "submenu5": [
          "Store Item",
          storeItem(),
          Icons.inventory_rounded,
          "/inventory&Assets/item"
        ],
        "submenu6": [
          "Supplier Type",
          supplierType(),
          Icons.inventory_rounded,
          "/inventory&Assets/supplierType"
        ],
        "submenu7": [
          "Supplier",
          supplier(),
          Icons.inventory_rounded,
          "/inventory&Assets/supplier"
        ],
        "submenu8": [
          "Purchase Order",
          purchaseOrder(),
          Icons.inventory_rounded,
          "/inventory&Assets/purchaseOrder"
        ],
        "submenu9": [
          "Request Order",
          requestOrder(),
          Icons.inventory_rounded,
          "/inventory&Assets/requestOrder"
        ],
        "submenu10": [
          "Billing",
          billing(),
          Icons.inventory_rounded,
          "/inventory&Assets/billing"
        ],
        "submenu3ex": "Inventory Reports",
        "submenu3.1": [
          "Item Reports",
          itemReport(),
          Icons.text_snippet_outlined,
          "/inventory&Assets/reports/itemReport"
        ],
        "submenu3.2": [
          "Invoice Reports",
          invoiceReport(),
          Icons.text_snippet_outlined,
          "/inventory&Assets/reports/invoiceReport"
        ],
      },
      {
        "size": widget.size!,
        "value": "Messages",
        "iconData": Icons.message_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[24],
        "submenu1": ["Inbox", inbox(), Icons.inbox_rounded, "/messages/inbox"],
        "submenu2": ["Sent", sent(), Icons.email_outlined, "/messages/sent"],
        "submenu3": [
          "Favorite",
          favorite(),
          Icons.star_border_purple500_rounded,
          "/messages/favorite"
        ],
        "submenu4": ["Trash", trash(), Icons.delete, "/messages/trash"],
      },
      {
        "size": widget.size!,
        "value": "Signature",
        "link": signature(),
        "iconData": Icons.draw_rounded,
        "selected": globalData.selected[25],
        "route": "/signature"
      },
      {
        "size": widget.size!,
        "value": "Settings",
        "iconData": Icons.settings,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[26],
        "submenu1": [
          "Institution Details",
          institutionDetails(),
          Icons.settings_suggest_rounded,
          "/settings/institutionDetails"
        ],
        "submenu2": [
          "Institution Settings",
          institutionSettings(),
          Icons.settings_suggest_rounded,
          "/settings/institutionSettings"
        ],
        "submenu3": [
          "Institution Admin",
          institutionAdmin(),
          Icons.settings_suggest_rounded,
          "/settings/institutionAdmin"
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
                    ? Radius.circular(0)
                    : Radius.circular(0),
                bottomRight: Responsive.isDesktop(context)
                    ? Radius.circular(0)
                    : Radius.circular(0))),
        padding: EdgeInsets.only(
            top: Insets().appPadding / 2, bottom: Insets().appPadding / 2),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: widget.size! > 100 ? 40 : 24,
                backgroundColor: Palette().textColor,
                child: Container(
                    padding: EdgeInsets.all(7),
                    child: ClipOval(
                        child: Image.asset("assets/img/skylogo2.png"))),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: size.height - 107,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: globalData.scrollCont,
                  child: Column(
                    children: [
                      ...List.generate(items.length, (index) {
                        return Container(
                          child: DrawerItem(
                            size: items[index]["size"],
                            selected: items[index]["selected"],
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
                            submenu46: items[index]["submenu4.6"],
                            submenu47: items[index]["submenu4.7"],
                            link: items[index]["link"],
                            route: items[index]["route"],
                            submenu1ex: items[index]["submenu1ex"],
                            submenu3ex: items[index]["submenu3ex"],
                            submenu4ex: items[index]["submenu4ex"],
                            onHover: (val) {
                              globalData.oldIndex = index;

                              if (globalData.menu == true)
                                setState(() {
                                  if (val) {
                                    _drawerSize = 250;
                                  } else {
                                    _drawerSize = 60;
                                  }
                                });
                              if (globalData.menu == false)
                                setState(() {
                                  _drawerSize = 250;
                                });
                              widget.onTap!(_drawerSize);
                              widget.onTap!(_drawerSize);
                            },
                            onTap: (val) {
                              setState(() {
                                globalData.selected[index] = val;
                                globalData.selection();
                              });
                              globalData.drawerPos =
                                  globalData.scrollCont.positions.last.pixels;
                            },
                          ),
                        );
                      })
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
