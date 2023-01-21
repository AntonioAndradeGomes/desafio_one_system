import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:teste_onde_system/app/models/company.dart';
import 'package:teste_onde_system/app/models/line.dart';
import 'package:teste_onde_system/app/models/partner.dart';

class HomeController extends GetxController {
  TextEditingController companyCodeTextController = TextEditingController();
  TextEditingController partnerCodeTextController = TextEditingController();
  TextEditingController lineCodeTextController = TextEditingController();

  Company? selectCompany;
  Partner? selectPartner;
  Line? selectLine;

  List<Company> listSearch = LISTCOMPANY;
  List<Partner> listSearchPartner = LISTPartner;
  List<Line> listSearchLine = LISTLINE;

  void searchListCompany(String value) {
    listSearch = LISTCOMPANY
        .where((element) =>
            element.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    update();
  }

  void searchListPartner(String value) {
    listSearchPartner = LISTPartner.where((element) =>
            element.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    update();
  }

  void searchListLine(String value) {
    listSearchLine = LISTLINE
        .where((element) =>
            element.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    update();
  }

  void setCompanyWithCode(String value) {
    if (value.isNotEmpty) {
      int valueNum = int.parse(value);
      var company = LISTCOMPANY.firstWhereOrNull(
        (element) => element.code == valueNum,
      );
      selectCompany = company;
      update();
      return;
    }
    selectCompany = null;
    update();
  }

  void setPartnerWithCode(String value) {
    if (value.isNotEmpty) {
      int valueNum = int.parse(value);
      var partner = LISTPartner.firstWhereOrNull(
        (element) => element.code == valueNum,
      );
      selectPartner = partner;
      update();
      return;
    }
    selectPartner = null;
    update();
  }

  void setLineWithCode(String value) {
    if (value.isNotEmpty) {
      int valueNum = int.parse(value);
      var line = LISTLINE.firstWhereOrNull(
        (element) => element.code == valueNum,
      );
      selectLine = line;
      update();
      return;
    }
    selectLine = null;
    update();
  }

  void resetList() {
    listSearch = LISTCOMPANY;
    listSearchPartner = LISTPartner;
    listSearchLine = LISTLINE;
    update();
  }
}
