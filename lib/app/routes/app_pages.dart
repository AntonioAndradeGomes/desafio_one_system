import 'package:get/get.dart';
import 'package:teste_onde_system/app/modules/home/index.dart';
import 'app_routes.dart';

abstract class AppPages {
  static const initalPage = AppRoutes.INITIAL;

  static final List<GetPage> routes = [
    GetPage(
      name: initalPage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
