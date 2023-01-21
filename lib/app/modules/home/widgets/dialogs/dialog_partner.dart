import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_onde_system/app/modules/home/home_controller.dart';

class DialogPartner extends StatelessWidget {
  const DialogPartner({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.80,
          width: MediaQuery.of(context).size.width * 0.60,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Pesquise pelo código ou descrição',
                  hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onChanged: (value) {
                  controller.searchListPartner(value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: controller.listSearchPartner.length,
                  itemBuilder: (context, i) {
                    final item = controller.listSearchPartner[i];
                    return ListTile(
                      onTap: () {
                        controller.setPartnerWithCode(item.code.toString());
                        controller.partnerCodeTextController.text =
                            item.code.toString();
                        Get.back();
                      },
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        item.toString(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
