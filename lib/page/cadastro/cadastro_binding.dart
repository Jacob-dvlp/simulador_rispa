import 'imports.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CadastroController());
  }
}
