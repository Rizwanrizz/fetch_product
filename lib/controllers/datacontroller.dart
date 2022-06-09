import 'package:fetch_product/models/datamodel.dart';
import 'package:fetch_product/services/dataservice.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var DataList = <DataModel>[].obs;
  var loading = true.obs;
  getData() async {
    loading.value = true;
    var datas = await DataServices().getmethod();
    try {
      if (datas != null) {
        DataList.value = datas;
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loading.value = false;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
