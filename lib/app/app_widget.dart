import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_onde_system/app/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Desafio One System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      initialRoute: AppPages.initalPage,
      getPages: AppPages.routes,
    );
  }
}
