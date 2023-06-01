import 'package:get/get.dart';

class MainpageController extends GetxController {
  //TODO: Implement MainpageController
FirebaseFirestore fr = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> strDt() {
    CollectionReference status = fr.collection("comunityStatus");
    return status.snapshots();
  }
  var tbindex = 0;

  void changeTab(int index) {
    tbindex = index;
    update();
  }
}
