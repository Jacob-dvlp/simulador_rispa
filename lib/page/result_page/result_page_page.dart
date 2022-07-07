import 'imports.dart';

class ResultPagePage extends StatelessWidget {
  const ResultPagePage({Key key}) : super(key: key);
  static const String routeName = "/tela4";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageParcelaController>(
      init: PageParcelaController(
        Get.find(),
      ),
      builder: (_) => Scaffold(
        backgroundColor: const Color(0XFFf8fffc),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: const [WidgetCustomRessultBar()],
          elevation: 0,
          backgroundColor: const Color(0XFFf8fffc),
        ),
        body: _.isLoading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Aguarda um momento',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Estamos simulando seu pedido de crédito Rispar',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            : WidgetCustomResult(dadaJsonModel: _.responseDadaModelJson)
      ),
    );
  }
}
