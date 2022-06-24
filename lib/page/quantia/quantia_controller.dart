import 'imports.dart';

class QuantiaController extends GetxController {
  final valor = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final arguments = Get.arguments;

  verficarCampoValor() {
    int qtValor = int.parse(
      valor.text.toString(),
    );
    if (qtValor <= 999 || qtValor > 3000) {
      valor.clear();
      print(arguments[0]);
      print(arguments[1]);
      return Get.snackbar('Valor', ' O valor  min é 1.000 e o max é 3.000 ',
          icon: const Icon(Icons.info), backgroundColor: Colors.red);
    } else if (qtValor <= 3000) {
      return Get.toNamed(
        PageParcelaPage.routeName,
        arguments: [
          qtValor,
          arguments[0],
          arguments[1],
        ],
      );
    }
  }

  @override
  void dispose() {
    valor.dispose();
    super.dispose();
  }
}
