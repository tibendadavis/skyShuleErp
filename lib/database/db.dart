import 'package:hive/hive.dart';
//part 'db.g.dart';

@HiveType(typeId: 0)
class MySetting extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late int? uid;

  @HiveField(2)
  late String? username;

  @HiveField(3)
  late int? roleID;

  @HiveField(4)
  late String? countryCode;

  @HiveField(5)
  late int? facilityID;

  @HiveField(6)
  late String? language;

  @HiveField(7)
  late int? signedInID;

  @HiveField(8)
  late DateTime dateAdded;
}

@HiveType(typeId: 1)
class DraftedHumanTZCase extends HiveObject {
  @HiveField(0)
  late String caseID;

  @HiveField(2)
  late int uid;

  @HiveField(3)
  late String username;

  @HiveField(1)
  late String? humanID;

  @HiveField(4)
  late DateTime? visitDate;

  @HiveField(5)
  late String? visitStatus;

  @HiveField(6)
  late String? surname;

  @HiveField(7)
  late String? otherNames;

  @HiveField(8)
  late String? popularName;

  @HiveField(9)
  late int? age;

  @HiveField(10)
  late String? sex;

  @HiveField(11)
  late String? hasPhone;

  // if is phone yes
  @HiveField(12)
  late String? phoneNo;

  @HiveField(13)
  late String? whosePhone;

  @HiveField(14)
  late Map? locationOfEvent;

  @HiveField(15)
  late DateTime? dateBitten;

  @HiveField(16)
  late DateTime? dateReportedToHospital;

  @HiveField(17)
  late String? bitingAnimal;

  @HiveField(18)
  late String? wildlifeSpecify;

  @HiveField(19)
  late List? biteSite;

  @HiveField(20)
  late String? biteDetails;

  @HiveField(21)
  late List? symptoms;

  @HiveField(22)
  late List? riskAssessment;

  @HiveField(23)
  late String? animalKnown;

  // if animal known
  @HiveField(24)
  late String? ownerName;

  // if animal known
  @HiveField(25)
  late String? ownerResidence;

  @HiveField(26)
  late List? humanEnv;

  @HiveField(27)
  late List? animalEnv;

  @HiveField(28)
  late String? animalAlive;

  @HiveField(29)
  late String? dpInformed;

  @HiveField(30)
  late String? assessmentDecision;

  @HiveField(31)
  late List? treatmentOfVictim;

  @HiveField(32)
  late String? pepRecommended;

  @HiveField(33)
  late String? pepAvailable;

  @HiveField(34)
  late String? howUsed;

  @HiveField(35)
  late String? victimWasReferred;

  @HiveField(36)
  late String? victimReferredTo;

  @HiveField(37)
  late String? comments;

  @HiveField(38)
  late int? facilityID;

  @HiveField(39)
  late String status;

  @HiveField(40)
  late DateTime dateAdded;
}

@HiveType(typeId: 2)
class DraftedAnimalTZCase extends HiveObject {
  @HiveField(0)
  late String caseID;

  @HiveField(1)
  late int uid;

  @HiveField(2)
  late String username;

  @HiveField(3)
  late DateTime? dateOfInvestigation;

  @HiveField(4)
  late String? isInvestigationLinked;

  @HiveField(5)
  late String? animalID;

  @HiveField(6)
  late Map? locationOfEvent;

  @HiveField(7)
  late String? typeOfInvestigation;

  @HiveField(8)
  late String? reportedFrom;

  @HiveField(9)
  late List? reasonForReport;

  @HiveField(10)
  late String? reasonForReportOther;

  @HiveField(11)
  late String? animalType;

  @HiveField(12)
  late String? wildlifeSpecify;

  @HiveField(13)
  late String? wasAnimalOwned;

  // if is phone yes
  @HiveField(14)
  late String? ownerName;

  @HiveField(15)
  late int? numberOfPeopleBitten;

  @HiveField(16)
  late List<Map>? peopleBitten;

  @HiveField(17)
  late List? animalsBitten;

  @HiveField(18)
  late String? otherAnimalsBittenSpecify;

  @HiveField(19)
  late String? animalFound;

  @HiveField(20)
  late String? animalOutcome;

  @HiveField(21)
  late String? deathCause;

  @HiveField(22)
  late String? animalAge;

  @HiveField(23)
  late String? animalSex;

  @HiveField(24)
  late String? isAnimalVaccinated;

  // if animal known
  @HiveField(25)
  late int? yearVaccinated;

  @HiveField(26)
  late List? symptoms;

  @HiveField(27)
  late List? notSickGroup;

  @HiveField(28)
  late List? humanEnv;

  @HiveField(29)
  late List? animalEnv;

  @HiveField(30)
  late String? assessmentDecision;

  @HiveField(31)
  late String? sampleCollected;

  @HiveField(32)
  late DateTime? sampleDate;

  @HiveField(33)
  late String? locationSampleStored;

  @HiveField(34)
  late String? locationSampleStoredOther;

  @HiveField(35)
  late DateTime? dateTakenToLab;

  @HiveField(36)
  late String? lateralFlowTestDone;

  @HiveField(37)
  late String? lateralFlowTestOutcome;

  @HiveField(38)
  late String? whySampleWasNotTaken;

  @HiveField(39)
  late String? comments;

  @HiveField(40)
  late int? facilityID;

  @HiveField(41)
  late String status;

  @HiveField(42)
  late DateTime dateAdded;
}

@HiveType(typeId: 3)
class DraftedHumanPHCase extends HiveObject {
  @HiveField(0)
  late String caseID;

  @HiveField(1)
  late int uid;

  @HiveField(2)
  late String username;

  @HiveField(3)
  late String? humanID;

  @HiveField(4)
  late DateTime? visitDate;

  @HiveField(5)
  late String? surname;

  @HiveField(6)
  late String? otherNames;

  @HiveField(7)
  late String? popularName;

  @HiveField(8)
  late int? age;

  @HiveField(9)
  late String? sex;

  @HiveField(10)
  late String? hasPhone;

  // if is phone yes
  @HiveField(11)
  late String? phoneNo;

  @HiveField(12)
  late String? whosePhone;

  @HiveField(13)
  late Map? locationOfEvent;

  @HiveField(14)
  late String? visitStatus;

  @HiveField(15)
  late String? referredFromAnotherFacility;

  @HiveField(16)
  late String? referredFacilityName;

  @HiveField(17)
  late DateTime? dateBitten;

  @HiveField(18)
  late String? bitingAnimal;

  @HiveField(19)
  late String? wildlifeSpecify;

  @HiveField(20)
  late String? moreBitingAnimalDetails;

  @HiveField(21)
  late List? biteSite;

  @HiveField(22)
  late String? biteSiteSpecify;

  @HiveField(23)
  late String? biteDetails;

  @HiveField(24)
  late String? biteDetailsSpecify;

  @HiveField(25)
  late String? categoryOfExposure;

  @HiveField(26)
  late String? animalAlive;

  @HiveField(27)
  late String? animalKnown;

  @HiveField(28)
  late String? ownerName;

  @HiveField(29)
  late String? ownerResidence;

  @HiveField(30)
  late String? animalVaccination;

  @HiveField(31)
  late String? vaccinationStatus;

  @HiveField(32)
  late String? vaccinationStatusSpecify;

  @HiveField(33)
  late String? animalBitten;

  @HiveField(34)
  late String? animalBittenDetails;

  @HiveField(35)
  late List? symptoms;

  @HiveField(36)
  late String? symptomsSpecify;

  @HiveField(37)
  late List? victimEnv;

  @HiveField(38)
  late String? victimEnvSpecify;

  @HiveField(39)
  late List? animalEnv;

  @HiveField(40)
  late String? animalEnvSpecify;

  @HiveField(41)
  late String? assessmentDecision;

  @HiveField(42)
  late String? maoVpoConsulted;

  @HiveField(43)
  late List? actionsTaken;

  @HiveField(44)
  late String? actionsTakenSpecify;

  @HiveField(45)
  late List? treatmentOfVictim;

  @HiveField(46)
  late String? treatmentOfVictimSpecify;

  @HiveField(47)
  late String? pepAvailable;

  @HiveField(48)
  late String? patientPEP;

  @HiveField(49)
  late String? patientPEPSpecify;

  @HiveField(50)
  late String? victimWasReferred;

  @HiveField(51)
  late String? victimReferredTo;

  @HiveField(52)
  late String? comments;

  @HiveField(53)
  late int? facilityID;

  @HiveField(54)
  late String status;

  @HiveField(55)
  late DateTime dateAdded;
}

@HiveType(typeId: 4)
class DraftedAnimalPHCase extends HiveObject {
  @HiveField(0)
  late String caseID;

  @HiveField(1)
  late int uid;

  @HiveField(2)
  late String? username;

  @HiveField(3)
  late DateTime? dateOfInvestigation;

  @HiveField(4)
  late Map? locationOfEvent;

  @HiveField(5)
  late String? animalID;

  @HiveField(6)
  late String? typeOfInvestigation;

  @HiveField(7)
  late String? reportedFrom;

  @HiveField(8)
  late String? reportedFromOther;

  @HiveField(9)
  late List? reasonForReport;

  @HiveField(10)
  late String? reasonForReportOther;

  @HiveField(11)
  late String? isInvestigationLinked;

  @HiveField(12)
  late int? numberOfPeopleBitten;

  @HiveField(13)
  late List<Map>? peopleBitten;

  @HiveField(14)
  late String? animalType;

  @HiveField(15)
  late String? wildlifeSpecify;

  @HiveField(16)
  late String? animalAge;

  @HiveField(17)
  late String? animalSex;

  @HiveField(18)
  late String? wasAnimalOwned;

  @HiveField(19)
  late String? ownerName;

  @HiveField(20)
  late String? isAnimalVaccinated;

  @HiveField(21)
  late int? yearVaccinated;

  @HiveField(22)
  late String? monthVaccinated;

  @HiveField(23)
  late String? animalVaccinated;

  @HiveField(24)
  late String? animalVaccinatedOther;

  @HiveField(25)
  late List? symptoms;

  @HiveField(26)
  late String? symptomsOther;

  @HiveField(27)
  late List? victimEnv;

  @HiveField(28)
  late String? victimEnvOther;

  @HiveField(29)
  late List? animalEnv;

  @HiveField(30)
  late String? animalEnvOther;

  @HiveField(31)
  late String? animalsBitten;

  @HiveField(32)
  late String? animalsBittenDetails;

  @HiveField(33)
  late String? otherAnimalsBitten;

  @HiveField(34)
  late String? otherAnimalsBittenNames;

  @HiveField(35)
  late String? otherAnimalsBittenNamesSpecify;

  @HiveField(36)
  late String? animalOutcome;

  @HiveField(37)
  late String? deathCause;

  @HiveField(38)
  late String? sampleCollected;

  @HiveField(39)
  late DateTime? sampleDate;

  @HiveField(40)
  late String? locationSampleStored;

  @HiveField(41)
  late String? locationSampleStoredOther;

  @HiveField(42)
  late String? lateralFlowTestDone;

  @HiveField(43)
  late String? lateralFlowTestOutcome;

  @HiveField(44)
  late String? whySampleWasNotTaken;

  @HiveField(45)
  late String? investigationAction;

  @HiveField(46)
  late String? investigationConclusion;

  @HiveField(47)
  late String? comments;

  @HiveField(48)
  late int? facilityID;

  @HiveField(49)
  late String status;

  @HiveField(50)
  late DateTime dateAdded;
}

@HiveType(typeId: 5)
class Filter extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  late Map filters;

  @HiveField(3)
  late DateTime dateAdded;
}
