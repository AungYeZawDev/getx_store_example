import 'package:get/get.dart';
import 'package:getx_store_example/controllers/store_controller.dart';
import 'package:getx_store_example/services/provider.dart';
import 'package:getx_store_example/services/repository.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController(
        repository: ReviewRepository(storeProvider: StoreProvider())));
  }
}
