import 'package:skyconnect_starter/main.dart';
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
import 'package:skyconnect_starter/screens/Messages/compose.scrn.dart';
import 'package:skyconnect_starter/screens/Certificate/customCertificate.scrn.dart';
import 'package:skyconnect_starter/screens/Grading/defaultGrading.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/department.scrn.dart';
import 'package:skyconnect_starter/screens/Data%20Management/designation.scrn.dart';
import 'package:skyconnect_starter/screens/Attendance/employeeAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/Payroll%20Management/employeeBonus.scrn.dart';
import 'package:skyconnect_starter/screens/Leave%20Management/employeeLeave.scrn.dart';
import 'package:skyconnect_starter/screens/Payroll%20Management/employeeSalary.scrn.dart';
import 'package:skyconnect_starter/screens/Faculty%20Management/enrollment.scrn.dart';
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
import 'package:skyconnect_starter/screens/Login/login.scrn.dart';
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

class routes {
  var route = {
    "/": (context) => login(),
    "/home": (context) => MyHomePage(page: HomePage()),
    "/dataManagement/department": (context) => MyHomePage(page: department()),
    "/dataManagement/designation": (context) => MyHomePage(page: designation()),
    "/dataManagement/classLevel": (context) => MyHomePage(page: classLevels()),
    "/dataManagement/academicYearDetails": (context) =>
        MyHomePage(page: academicYearDetails()),
    "/dataManagement/financialYear": (context) =>
        MyHomePage(page: financialYearDetails()),
    "/facultyManagement/faculty": (context) => MyHomePage(page: faculty()),
    "/facultyManagement/enrollment": (context) =>
        MyHomePage(page: enrollment()),
    "/facultyManagement/HR": (context) => MyHomePage(page: humanResource()),
    "/facultyManagement/exFaculty": (context) => MyHomePage(page: exFaculty()),
    "/users/students": (context) => MyHomePage(page: manageStudents()),
    "/users/parents": (context) => MyHomePage(page: parents()),
    "/users/teachers": (context) => MyHomePage(page: teachers()),
    "/users/supportingStaff": (context) => MyHomePage(page: supportingStaff()),
    "/class": (context) => MyHomePage(page: classes()),
    "/stream": (context) => MyHomePage(page: streams()),
    "/subject/listSubjects": (context) => MyHomePage(page: listSubjects()),
    "/subject/classSubjects": (context) => MyHomePage(page: classSubjects()),
    "/subject/streamSubjectTeacher": (context) =>
        MyHomePage(page: streamSubjectTeacher()),
    "/subject/teachingTools/syllabus": (context) =>
        MyHomePage(page: syllabus()),
    "/subject/teachingTools/assignments": (context) =>
        MyHomePage(page: assignment()),
    "/subject/teachingTools/lessonPlan": (context) =>
        MyHomePage(page: lessonPlan()),
    "/grading/defaultGrading": (context) => MyHomePage(page: defaultGrading()),
    "/grading/specialgradeCategory": (context) =>
        MyHomePage(page: specialGradeCategory()),
    "/grading/specialGrading": (context) => MyHomePage(page: specialGrading()),
    "/terms": (context) => MyHomePage(page: terms()),
    "/exams/examSchedule": (context) => MyHomePage(page: examSchedule()),
    "/exams/minorSchoolExams": (context) =>
        MyHomePage(page: minorSchoolExams()),
    "/exams/settings/examGroups": (context) => MyHomePage(page: examGroup()),
    "/exams/settings/schoolExams": (context) => MyHomePage(page: schoolExams()),
    "/exams/settings/classAllocation": (context) =>
        MyHomePage(page: classAllocations()),
    "/exams/reports/singleReports": (context) =>
        MyHomePage(page: singleReports()),
    "/exams/reports/combinedReports": (context) =>
        MyHomePage(page: combinedReports()),
    "/mark": (context) => MyHomePage(page: mark()),
    "/certificate/type": (context) => MyHomePage(page: certificateType()),
    "/certificate/viewTemplate": (context) =>
        MyHomePage(page: customCertificate()),
    "/certificate/generate": (context) =>
        MyHomePage(page: generateCertificate()),
    "/idCards": (context) => MyHomePage(page: idCards()),
    "/classRoutine": (context) => MyHomePage(page: classRoutine()),
    "/attendance/student": (context) => MyHomePage(page: studentAttendance()),
    "/attendance/employee": (context) => MyHomePage(page: employeeAttendance()),
    "/attendance/exam": (context) => MyHomePage(page: examAttendance()),
    "/attendance/teacherOnDuty": (context) => MyHomePage(page: teacherOnDuty()),
    "/attendance/report": (context) => MyHomePage(page: attendanceReport()),
    "/news&announcements": (context) => MyHomePage(page: newsBoard()),
    "/hostelManagement/hostel": (context) => MyHomePage(page: hostels()),
    "/hostelManagement/members": (context) => MyHomePage(page: membersHostel()),
    "/library/category": (context) => MyHomePage(page: bookCategory()),
    "/library/books": (context) => MyHomePage(page: books()),
    "/library/issue": (context) => MyHomePage(page: bookIssue()),
    "/library/returnSettings": (context) =>
        MyHomePage(page: bookReturnSetting()),
    "/library/return": (context) => MyHomePage(page: bookReturn()),
    "/library/lost": (context) => MyHomePage(page: bookLost()),
    "/library/binding": (context) => MyHomePage(page: bookBinding()),
    "/promotion": (context) => MyHomePage(page: promotion()),
    "/eResources/files": (context) => MyHomePage(page: fileManagement()),
    "/eResources/liveStudies": (context) => MyHomePage(page: liveStudies()),
    "/eResources/classNotes": (context) => MyHomePage(page: classNotes()),
    "/eResources/onlineDiscussion": (context) =>
        MyHomePage(page: onlineDiscussion()),
    "/financeManagement/account": (context) =>
        MyHomePage(page: accountManagement()),
    "/financeManagement/feeCategory": (context) =>
        MyHomePage(page: feeCategory()),
    "/financeManagement/feePayment": (context) =>
        MyHomePage(page: feePayment()),
    "/financeManagement/feeReceipts": (context) =>
        MyHomePage(page: feeReceipts()),
    "/payrollManagement/employeeSalary": (context) =>
        MyHomePage(page: employeeSalary()),
    "/payrollManagement/employeeBonus": (context) =>
        MyHomePage(page: employeeBonus()),
    "/payrollManagement/payroll": (context) => MyHomePage(page: payroll()),
    "/leaveManagement/category": (context) => MyHomePage(page: leaveCategory()),
    "/leaveManagement/employee": (context) => MyHomePage(page: employeeLeave()),
    "/leaveManagement/student": (context) => MyHomePage(page: studentLeave()),
    "/inventory&Assets/category": (context) =>
        MyHomePage(page: storeCategory()),
    "/inventory&Assets/type": (context) => MyHomePage(page: storeType()),
    "/inventory&Assets/store": (context) => MyHomePage(page: store()),
    "/inventory&Assets/itemCategory": (context) =>
        MyHomePage(page: itemCategory()),
    "/inventory&Assets/item": (context) => MyHomePage(page: storeItem()),
    "/inventory&Assets/supplierType": (context) =>
        MyHomePage(page: supplierType()),
    "/inventory&Assets/supplier": (context) => MyHomePage(page: supplier()),
    "/inventory&Assets/purchaseOrder": (context) =>
        MyHomePage(page: purchaseOrder()),
    "/inventory&Assets/requestOrder": (context) =>
        MyHomePage(page: requestOrder()),
    "/inventory&Assets/billing": (context) => MyHomePage(page: billing()),
    "/inventory&Assets/reports/itemReport": (context) =>
        MyHomePage(page: itemReport()),
    "/inventory&Assets/reports/invoiceReport": (context) =>
        MyHomePage(page: invoiceReport()),
    "/messages/compose": (context) => MyHomePage(page: compose()),
    "/messages/inbox": (context) => MyHomePage(page: inbox()),
    "/messages/sent": (context) => MyHomePage(page: sent()),
    "/messages/favorite": (context) => MyHomePage(page: favorite()),
    "/messages/trash": (context) => MyHomePage(page: trash()),
    "/signature": (context) => MyHomePage(page: signature()),
    "/settings/institutionDetails": (context) =>
        MyHomePage(page: institutionDetails()),
    "/settings/institutionSettings": (context) =>
        MyHomePage(page: institutionSettings()),
    "/settings/institutionAdmin": (context) =>
        MyHomePage(page: institutionAdmin()),
  };
}
