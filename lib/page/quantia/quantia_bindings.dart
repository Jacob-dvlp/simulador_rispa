import 'imports.dart';

class QuantiaBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuantiaController());
  }
}
