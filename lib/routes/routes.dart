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
    "/": (context) => const login(),
    "/home": (context) => MyHomePage(page: HomePage()),
    "/dataManagement/department": (context) =>
        const MyHomePage(page: department()),
    "/dataManagement/designation": (context) =>
        const MyHomePage(page: designation()),
    "/dataManagement/classLevel": (context) =>
        const MyHomePage(page: classLevels()),
    "/dataManagement/academicYearDetails": (context) =>
        const MyHomePage(page: academicYearDetails()),
    "/dataManagement/financialYear": (context) =>
        const MyHomePage(page: financialYearDetails()),
    "/facultyManagement/faculty": (context) =>
        const MyHomePage(page: faculty()),
    "/facultyManagement/enrollment": (context) =>
        const MyHomePage(page: enrollment()),
    "/facultyManagement/HR": (context) =>
        const MyHomePage(page: humanResource()),
    "/facultyManagement/exFaculty": (context) =>
        const MyHomePage(page: exFaculty()),
    "/users/students": (context) => const MyHomePage(page: manageStudents()),
    "/users/parents": (context) => const MyHomePage(page: parents()),
    "/users/teachers": (context) => const MyHomePage(page: teachers()),
    "/users/supportingStaff": (context) =>
        const MyHomePage(page: supportingStaff()),
    "/class": (context) => const MyHomePage(page: classes()),
    "/stream": (context) => const MyHomePage(page: streams()),
    "/subject/listSubjects": (context) =>
        const MyHomePage(page: listSubjects()),
    "/subject/classSubjects": (context) =>
        const MyHomePage(page: classSubjects()),
    "/subject/streamSubjectTeacher": (context) =>
        const MyHomePage(page: streamSubjectTeacher()),
    "/subject/teachingTools/syllabus": (context) =>
        const MyHomePage(page: syllabus()),
    "/subject/teachingTools/assignments": (context) =>
        const MyHomePage(page: assignment()),
    "/subject/teachingTools/lessonPlan": (context) =>
        const MyHomePage(page: lessonPlan()),
    "/grading/defaultGrading": (context) =>
        const MyHomePage(page: defaultGrading()),
    "/grading/specialgradeCategory": (context) =>
        const MyHomePage(page: specialGradeCategory()),
    "/grading/specialGrading": (context) =>
        const MyHomePage(page: specialGrading()),
    "/terms": (context) => const MyHomePage(page: terms()),
    "/exams/examSchedule": (context) => const MyHomePage(page: examSchedule()),
    "/exams/minorSchoolExams": (context) =>
        const MyHomePage(page: minorSchoolExams()),
    "/exams/settings/examGroups": (context) =>
        const MyHomePage(page: examGroup()),
    "/exams/settings/schoolExams": (context) =>
        const MyHomePage(page: schoolExams()),
    "/exams/settings/classAllocation": (context) =>
        const MyHomePage(page: classAllocations()),
    "/exams/reports/singleReports": (context) =>
        const MyHomePage(page: singleReports()),
    "/exams/reports/combinedReports": (context) =>
        const MyHomePage(page: combinedReports()),
    "/mark": (context) => const MyHomePage(page: mark()),
    "/certificate/type": (context) => const MyHomePage(page: certificateType()),
    "/certificate/viewTemplate": (context) =>
        const MyHomePage(page: customCertificate()),
    "/certificate/generate": (context) =>
        const MyHomePage(page: generateCertificate()),
    "/idCards": (context) => const MyHomePage(page: idCards()),
    "/classRoutine": (context) => const MyHomePage(page: classRoutine()),
    "/attendance/student": (context) =>
        const MyHomePage(page: studentAttendance()),
    "/attendance/employee": (context) =>
        const MyHomePage(page: employeeAttendance()),
    "/attendance/exam": (context) => const MyHomePage(page: examAttendance()),
    "/attendance/teacherOnDuty": (context) =>
        const MyHomePage(page: teacherOnDuty()),
    "/attendance/report": (context) =>
        const MyHomePage(page: attendanceReport()),
    "/news&announcements": (context) => MyHomePage(page: newsBoard()),
    "/hostelManagement/hostel": (context) => const MyHomePage(page: hostels()),
    "/hostelManagement/members": (context) =>
        const MyHomePage(page: membersHostel()),
    "/library/category": (context) => const MyHomePage(page: bookCategory()),
    "/library/books": (context) => const MyHomePage(page: books()),
    "/library/issue": (context) => const MyHomePage(page: bookIssue()),
    "/library/returnSettings": (context) =>
        const MyHomePage(page: bookReturnSetting()),
    "/library/return": (context) => const MyHomePage(page: bookReturn()),
    "/library/lost": (context) => const MyHomePage(page: bookLost()),
    "/library/binding": (context) => const MyHomePage(page: bookBinding()),
    "/promotion": (context) => const MyHomePage(page: promotion()),
    "/eResources/files": (context) => const MyHomePage(page: fileManagement()),
    "/eResources/liveStudies": (context) =>
        const MyHomePage(page: liveStudies()),
    "/eResources/classNotes": (context) => const MyHomePage(page: classNotes()),
    "/eResources/onlineDiscussion": (context) =>
        const MyHomePage(page: onlineDiscussion()),
    "/financeManagement/account": (context) =>
        const MyHomePage(page: accountManagement()),
    "/financeManagement/feeCategory": (context) =>
        const MyHomePage(page: feeCategory()),
    "/financeManagement/feePayment": (context) =>
        const MyHomePage(page: feePayment()),
    "/financeManagement/feeReceipts": (context) =>
        const MyHomePage(page: feeReceipts()),
    "/payrollManagement/employeeSalary": (context) =>
        const MyHomePage(page: employeeSalary()),
    "/payrollManagement/employeeBonus": (context) =>
        const MyHomePage(page: employeeBonus()),
    "/payrollManagement/payroll": (context) =>
        const MyHomePage(page: payroll()),
    "/leaveManagement/category": (context) =>
        const MyHomePage(page: leaveCategory()),
    "/leaveManagement/employee": (context) =>
        const MyHomePage(page: employeeLeave()),
    "/leaveManagement/student": (context) =>
        const MyHomePage(page: studentLeave()),
    "/inventory&Assets/category": (context) =>
        const MyHomePage(page: storeCategory()),
    "/inventory&Assets/type": (context) => const MyHomePage(page: storeType()),
    "/inventory&Assets/store": (context) => const MyHomePage(page: store()),
    "/inventory&Assets/itemCategory": (context) =>
        const MyHomePage(page: itemCategory()),
    "/inventory&Assets/item": (context) => const MyHomePage(page: storeItem()),
    "/inventory&Assets/supplierType": (context) =>
        const MyHomePage(page: supplierType()),
    "/inventory&Assets/supplier": (context) =>
        const MyHomePage(page: supplier()),
    "/inventory&Assets/purchaseOrder": (context) =>
        const MyHomePage(page: purchaseOrder()),
    "/inventory&Assets/requestOrder": (context) =>
        const MyHomePage(page: requestOrder()),
    "/inventory&Assets/billing": (context) => const MyHomePage(page: billing()),
    "/inventory&Assets/reports/itemReport": (context) =>
        const MyHomePage(page: itemReport()),
    "/inventory&Assets/reports/invoiceReport": (context) =>
        const MyHomePage(page: invoiceReport()),
    "/messages/compose": (context) => const MyHomePage(page: compose()),
    "/messages/inbox": (context) => const MyHomePage(page: inbox()),
    "/messages/sent": (context) => const MyHomePage(page: sent()),
    "/messages/favorite": (context) => const MyHomePage(page: favorite()),
    "/messages/trash": (context) => const MyHomePage(page: trash()),
    "/signature": (context) => const MyHomePage(page: signature()),
    "/settings/institutionDetails": (context) =>
        const MyHomePage(page: institutionDetails()),
    "/settings/institutionSettings": (context) =>
        const MyHomePage(page: institutionSettings()),
    "/settings/institutionAdmin": (context) =>
        const MyHomePage(page: institutionAdmin()),
  };
}
