

import 'imports.dart';

class QuantiaPage extends GetView<QuantiaController> {
  const QuantiaPage({Key key}) : super(key: key);
  static const String routeName = "/tela2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFf8fffc),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [WidgetCustomBar()],
        elevation: 0,
        backgroundColor: const Color(0x00f8fffc),
      ),
      body: const WidgetCustomBody(),
    );
  }
}
