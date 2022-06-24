import 'imports.dart';

class CadastroController extends GetxController {
  final emailController = TextEditingController();
  final nomeController = TextEditingController();

  verficarDados() {
    if (emailController.text.isEmpty || nomeController.text.isEmpty) {
      Get.snackbar('Dados', 'Campos vazios não são permetidos',
          icon: const Icon(Icons.info), backgroundColor: Colors.red);
    } else {
      return Get.toNamed(
        QuantiaPage.routeName,
        arguments: [nomeController.text, emailController.text],
      );
    }
  }

  @override
  void dispose() {
    nomeController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
