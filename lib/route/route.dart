

import 'package:get/get.dart';
import 'package:mini_project/logic/controller/StatementDetails.dart';
import 'package:mini_project/screen/psDetail.dart';

import '../screen/mainlayout.dart';

class Routes {
  static const psscreen = "/psdetails";
  static const mainscreen = "/mainscreen";

  static final routes = [
    GetPage(name: psscreen , page: () => ProblemStatementDetails(), binding: BindingsBuilder(() {
          Get.lazyPut<DetailsController>(
            () => DetailsController(),
          );
        })),
    GetPage(name: mainscreen, page: () => MyHomePage()),
  ];
}
