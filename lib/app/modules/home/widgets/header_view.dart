import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_onde_system/app/modules/home/home_controller.dart';
import 'package:teste_onde_system/app/modules/home/widgets/dialogs/dialog_company.dart';
import 'package:teste_onde_system/app/modules/home/widgets/dialogs/dialog_line.dart';
import 'package:teste_onde_system/app/modules/home/widgets/dialogs/dialog_partner.dart';
import 'package:teste_onde_system/app/modules/home/widgets/row_item.dart';
import 'package:teste_onde_system/app/modules/home/widgets/texts_header.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.all(20),
      children: [
        const TextsHeader(),
        const SizedBox(
          height: 15,
        ),
        GetBuilder<HomeController>(
          builder: (controller) {
            return RowItem(
              controllerCode: controller.companyCodeTextController,
              onChanged: (value) {
                controller.setCompanyWithCode(value);
              },
              type: 'Empresa',
              name: controller.selectCompany == null
                  ? ' '
                  : controller.selectCompany!.name.toUpperCase(),
              onPressed: () {
                FocusScope.of(context).unfocus();
                controller.resetList();
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(
                    child: DialogCompany(),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<HomeController>(
          builder: (controller) {
            return RowItem(
              controllerCode: controller.partnerCodeTextController,
              onChanged: (value) {
                controller.setPartnerWithCode(value);
              },
              type: 'Parceiro',
              name: controller.selectPartner == null
                  ? ' '
                  : controller.selectPartner!.name.toUpperCase(),
              onPressed: () {
                FocusScope.of(context).unfocus();
                controller.resetList();
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(
                    child: DialogPartner(),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        GetBuilder<HomeController>(
          builder: (controller) {
            return RowItem(
              controllerCode: controller.lineCodeTextController,
              onChanged: (value) {
                controller.setLineWithCode(value);
              },
              type: 'Linha do Procedimento',
              name: controller.selectLine == null
                  ? ' '
                  : controller.selectLine!.name.toUpperCase(),
              onPressed: () {
                FocusScope.of(context).unfocus();
                controller.resetList();
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(
                    child: DialogLine(),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
