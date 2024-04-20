

import 'package:get/get.dart';
import 'package:mini_project/logic/controller/StatementDetails.dart';
import 'package:mini_project/screen/collaborationPage.dart';
import 'package:mini_project/screen/psDetail.dart';
import 'package:mini_project/screen/application.dart';

import '../screen/mainlayout.dart';

class Routes {
  static const psscreen = "/psdetails";
  static const mainscreen = "/mainscreen";
  static const collaborationPage = "/collaborationPage";
  static const application = "/application";

  static final routes = [
    GetPage(name: psscreen , page: () => ProblemStatementDetails(), binding: BindingsBuilder(() {
          Get.lazyPut<DetailsController>(
            () => DetailsController(),
          );
        })),
    GetPage(name: mainscreen, page: () => MyHomePage()),
    GetPage(name: collaborationPage, page: () => CollaborationPage()),
    GetPage(name: application, page: () => Application()),
  ];
}
