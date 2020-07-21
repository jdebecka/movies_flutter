import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies/constants.dart';

StoreLocator storeLocatorFromJson(String str) =>
    StoreLocator.fromJson(json.decode(str));

String storeLocatorToJson(StoreLocator data) => json.encode(data.toJson());

class StoreLocator {
  StoreLocator({
    this.stores,
  });

  List<Store> stores;

  factory StoreLocator.fromJson(Map<String, dynamic> json) => StoreLocator(
        stores: List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stores": List<dynamic>.from(stores.map((x) => x.toJson())),
      };
}

class Store {
  Store({
    this.storeCode,
    this.storeClass,
    this.name,
    this.phone,
    this.address,
    this.city,
    this.country,
    this.countryCode,
    this.longitude,
    this.latitude,
    this.timeZoneIndex,
    this.openingHours,
    this.openingHourExceptions,
    this.departmentsWithConcepts,
    this.campaignConcepts,
  });

  String storeCode;
  StoreClass storeClass;
  String name;
  Phone phone;
  Address address;
  String city;
  Country country;
  CountryCode countryCode;
  double longitude;
  double latitude;
  int timeZoneIndex;
  List<OpeningHour> openingHours;
  List<OpeningHourException> openingHourExceptions;
  List<DepartmentsWithConcept> departmentsWithConcepts;
  List<CampaignConcept> campaignConcepts;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        storeCode: json["storeCode"],
        storeClass: storeClassValues.map[json["storeClass"]],
        name: json["name"],
        phone: phoneValues.map[json["phone"]],
        address: Address.fromJson(json["address"]),
        city: json["city"],
        country: countryValues.map[json["country"]],
        countryCode: countryCodeValues.map[json["countryCode"]],
        longitude: json["longitude"].toDouble(),
        latitude: json["latitude"].toDouble(),
        timeZoneIndex: json["timeZoneIndex"],
        openingHours: List<OpeningHour>.from(
            json["openingHours"].map((x) => OpeningHour.fromJson(x))),
        openingHourExceptions: List<OpeningHourException>.from(
            json["openingHourExceptions"]
                .map((x) => OpeningHourException.fromJson(x))),
        departmentsWithConcepts: List<DepartmentsWithConcept>.from(
            json["departmentsWithConcepts"]
                .map((x) => DepartmentsWithConcept.fromJson(x))),
        campaignConcepts: List<CampaignConcept>.from(
            json["campaignConcepts"].map((x) => CampaignConcept.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "storeCode": storeCode,
        "storeClass": storeClassValues.reverse[storeClass],
        "name": name,
        "phone": phoneValues.reverse[phone],
        "address": address.toJson(),
        "city": city,
        "country": countryValues.reverse[country],
        "countryCode": countryCodeValues.reverse[countryCode],
        "longitude": longitude,
        "latitude": latitude,
        "timeZoneIndex": timeZoneIndex,
        "openingHours": List<dynamic>.from(openingHours.map((x) => x.toJson())),
        "openingHourExceptions":
            List<dynamic>.from(openingHourExceptions.map((x) => x.toJson())),
        "departmentsWithConcepts":
            List<dynamic>.from(departmentsWithConcepts.map((x) => x.toJson())),
        "campaignConcepts":
            List<dynamic>.from(campaignConcepts.map((x) => x.toJson())),
      };
}

class Address {
  Address({
    this.streetName1,
    this.streetName2,
    this.postCode,
    this.postalAddress,
  });

  String streetName1;
  String streetName2;
  String postCode;
  String postalAddress;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        streetName1: json["streetName1"],
        streetName2: json["streetName2"],
        postCode: json["postCode"],
        postalAddress:
            json["postalAddress"] == null ? null : json["postalAddress"],
      );

  Map<String, dynamic> toJson() => {
        "streetName1": streetName1,
        "streetName2": streetName2,
        "postCode": postCode,
        "postalAddress": postalAddress == null ? null : postalAddress,
      };
}

class CampaignConcept {
  CampaignConcept({
    this.conceptId,
    this.name,
    this.departments,
  });

  String conceptId;
  String name;
  List<Department> departments;

  factory CampaignConcept.fromJson(Map<String, dynamic> json) =>
      CampaignConcept(
        conceptId: json["conceptId"],
        name: json["name"],
        departments: List<Department>.from(
            json["departments"].map((x) => Department.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "conceptId": conceptId,
        "name": name,
        "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
      };
}

class Department {
  Department({
    this.departmentId,
    this.name,
  });

  String departmentId;
  DepartmentName name;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        departmentId: json["departmentId"],
        name: departmentNameValues.map[json["name"]],
      );

  Map<String, dynamic> toJson() => {
        "departmentId": departmentId,
        "name": departmentNameValues.reverse[name],
      };
}

enum DepartmentName { YOUNG, MEN, KIDS, LADIES, BEAUTY, H_M_HOME }

final departmentNameValues = EnumValues({
  "Beauty": DepartmentName.BEAUTY,
  "H&M Home": DepartmentName.H_M_HOME,
  "Kids": DepartmentName.KIDS,
  "Ladies": DepartmentName.LADIES,
  "Men": DepartmentName.MEN,
  "Young": DepartmentName.YOUNG
});

enum Country { UK }

final countryValues = EnumValues({"UK": Country.UK});

enum CountryCode { GB }

final countryCodeValues = EnumValues({"GB": CountryCode.GB});

class DepartmentsWithConcept {
  DepartmentsWithConcept({
    this.departmentId,
    this.name,
    this.concepts,
  });

  String departmentId;
  DepartmentName name;
  List<Concept> concepts;

  factory DepartmentsWithConcept.fromJson(Map<String, dynamic> json) =>
      DepartmentsWithConcept(
        departmentId: json["departmentId"],
        name: departmentNameValues.map[json["name"]],
        concepts: List<Concept>.from(
            json["concepts"].map((x) => Concept.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "departmentId": departmentId,
        "name": departmentNameValues.reverse[name],
        "concepts": List<dynamic>.from(concepts.map((x) => x.toJson())),
      };
}

class Concept {
  Concept({
    this.conceptId,
    this.name,
  });

  String conceptId;
  ConceptName name;

  factory Concept.fromJson(Map<String, dynamic> json) => Concept(
        conceptId: json["conceptId"],
        name: conceptNameValues.map[json["name"]],
      );

  Map<String, dynamic> toJson() => {
        "conceptId": conceptId,
        "name": conceptNameValues.reverse[name],
      };
}

enum ConceptName {
  DIVIDED_FEMALE,
  H_M_L_O_G_G,
  H_M_MEN,
  DENIM,
  UNDERWEAR,
  ACCESSORIES,
  H_M_YOUNG,
  H_M_BABY,
  H_M_KIDS,
  H_M_LADIES,
  H_M_MAMA,
  H_M_LADIES_MODERN_CLASSIC,
  H_M_SPORT,
  DIVIDED_MALE,
  BODY_HAIR,
  MAKE_UP,
  LADIES_SHOES,
  H_M_HOME,
  MAN_TREND,
  H_M_TREND_LADIES,
  H_M,
  H_M_MAN_MODERN_CLASSIC,
  URBAN_BASICS,
  COSMETICS
}

final conceptNameValues = EnumValues({
  "Accessories": ConceptName.ACCESSORIES,
  "Body / Hair": ConceptName.BODY_HAIR,
  "Cosmetics": ConceptName.COSMETICS,
  "Denim": ConceptName.DENIM,
  "Divided Female": ConceptName.DIVIDED_FEMALE,
  "Divided Male": ConceptName.DIVIDED_MALE,
  "H&M+": ConceptName.H_M,
  "H&M Baby": ConceptName.H_M_BABY,
  "H&M Home": ConceptName.H_M_HOME,
  "H&M Kids": ConceptName.H_M_KIDS,
  "H&M Ladies": ConceptName.H_M_LADIES,
  "H&M Ladies Modern Classic": ConceptName.H_M_LADIES_MODERN_CLASSIC,
  "H&M L.O.G.G.": ConceptName.H_M_L_O_G_G,
  "H&M Mama": ConceptName.H_M_MAMA,
  "H&M Man Modern Classic": ConceptName.H_M_MAN_MODERN_CLASSIC,
  "H&M Men": ConceptName.H_M_MEN,
  "H&M Sport": ConceptName.H_M_SPORT,
  "H&M Trend Ladies": ConceptName.H_M_TREND_LADIES,
  "H&M Young": ConceptName.H_M_YOUNG,
  "Ladies Shoes": ConceptName.LADIES_SHOES,
  "Make up": ConceptName.MAKE_UP,
  "Man Trend": ConceptName.MAN_TREND,
  "Underwear": ConceptName.UNDERWEAR,
  "Urban Basics": ConceptName.URBAN_BASICS
});

class OpeningHourException {
  OpeningHourException({
    this.date,
    this.closedAllDay,
  });

  DateTime date;
  bool closedAllDay;

  factory OpeningHourException.fromJson(Map<String, dynamic> json) =>
      OpeningHourException(
        date: DateTime.parse(json["date"]),
        closedAllDay: json["closedAllDay"],
      );

  Map<String, dynamic> toJson() => {
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "closedAllDay": closedAllDay,
      };
}

class OpeningHour {
  OpeningHour({
    this.day,
    this.name,
    this.opens,
    this.closes,
    this.exceptionOpens,
    this.exceptionCloses,
  });

  int day;
  OpeningHourName name;
  Opens opens;
  Closes closes;
  String exceptionOpens;
  Opens exceptionCloses;

  factory OpeningHour.fromJson(Map<String, dynamic> json) => OpeningHour(
        day: json["day"],
        name: openingHourNameValues.map[json["name"]],
        opens: opensValues.map[json["opens"]],
        closes: closesValues.map[json["closes"]],
        exceptionOpens:
            json["exceptionOpens"] == null ? null : json["exceptionOpens"],
        exceptionCloses: json["exceptionCloses"] == null
            ? null
            : opensValues.map[json["exceptionCloses"]],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "name": openingHourNameValues.reverse[name],
        "opens": opensValues.reverse[opens],
        "closes": closesValues.reverse[closes],
        "exceptionOpens": exceptionOpens == null ? null : exceptionOpens,
        "exceptionCloses": exceptionCloses == null
            ? null
            : opensValues.reverse[exceptionCloses],
      };
}

enum Closes {
  THE_1900,
  THE_1800,
  THE_1700,
  THE_1730,
  THE_1630,
  THE_1600,
  THE_2000,
  THE_1830,
  THE_2100
}

final closesValues = EnumValues({
  "16:00": Closes.THE_1600,
  "16:30": Closes.THE_1630,
  "17:00": Closes.THE_1700,
  "17:30": Closes.THE_1730,
  "18:00": Closes.THE_1800,
  "18:30": Closes.THE_1830,
  "19:00": Closes.THE_1900,
  "20:00": Closes.THE_2000,
  "21:00": Closes.THE_2100
});

enum Opens {
  THE_1000,
  THE_0900,
  THE_1100,
  THE_1030,
  THE_1200,
  THE_0930,
  THE_1130,
  THE_1300
}

final opensValues = EnumValues({
  "09:00": Opens.THE_0900,
  "09:30": Opens.THE_0930,
  "10:00": Opens.THE_1000,
  "10:30": Opens.THE_1030,
  "11:00": Opens.THE_1100,
  "11:30": Opens.THE_1130,
  "12:00": Opens.THE_1200,
  "13:00": Opens.THE_1300
});

enum OpeningHourName { MON, TUE, WED, THU, FRI, SAT, SUN }

final openingHourNameValues = EnumValues({
  "Fri": OpeningHourName.FRI,
  "Mon": OpeningHourName.MON,
  "Sat": OpeningHourName.SAT,
  "Sun": OpeningHourName.SUN,
  "Thu": OpeningHourName.THU,
  "Tue": OpeningHourName.TUE,
  "Wed": OpeningHourName.WED
});

enum Phone {
  THE_443447369000,
  THE_44344736900,
  THE_442920051690,
  THE_441452801420,
  THE_441215197550
}

final phoneValues = EnumValues({
  "+44-1215197550": Phone.THE_441215197550,
  "+44-1452801420": Phone.THE_441452801420,
  "+44-2920051690": Phone.THE_442920051690,
  "+44-344736900": Phone.THE_44344736900,
  "+44-3447369000": Phone.THE_443447369000
});

enum StoreClass { BLUE, RED, F }

final storeClassValues = EnumValues(
    {"Blue": StoreClass.BLUE, "F": StoreClass.F, "Red": StoreClass.RED});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

Future<StoreLocator> getStores() async {
  final response = await http.get(storesLocationBaseUrl);
  if (response.statusCode == 200) {
    return StoreLocator.fromJson(json.decode(response.body));
  }
}
