import 'package:get/get.dart';
import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_screen.dart';

import 'package:poetry/screen/bottomnavigation_screen/bottomnavigation_widget.dart';

class TAndCController extends GetxController {
  void onTapAccept() {
    Get.offAll(
      BottomNavigation(),
    );
    update();
  }
}
