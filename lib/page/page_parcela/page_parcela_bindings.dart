import 'imports.dart';

class PageParcelaBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PageParcelaController(
        Get.find(),
      ),
    );
    Get.lazyPut(
      () => RespositoryData(),
    );
    Get.lazyPut(
      () => ProviderData(
        Get.find(),
      ),
    );
  }
}
