
import 'imports.dart';

class PageParcelaPage extends GetView<PageParcelaController> {
  const PageParcelaPage({Key key}) : super(key: key);
  static const String routeName = "/tela3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFf8fffc),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [WidgetCustomBar()],
        elevation: 0,
        backgroundColor: const Color(0XFFf8fffc),
      ),
      body: const CustomWidgetBody(),
    );
  }
}
