import 'imports.dart';

class CadastroPage extends GetView<CadastroController> {
  const CadastroPage({Key key}) : super(key: key);
  static const String routeName = '/tela1';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFf8fffc),
      body: WidgetCustomCadastro(),
    );
  }
}
