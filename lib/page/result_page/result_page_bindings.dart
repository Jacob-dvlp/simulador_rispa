import 'imports.dart';

class ResultPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultPageController());
  }
}
