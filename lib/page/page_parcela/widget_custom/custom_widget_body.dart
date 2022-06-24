import '../imports.dart';

class CustomWidgetBody extends GetView<PageParcelaController> {
  const CustomWidgetBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageParcelaController>(
      init: PageParcelaController(Get.find()),
      builder: (_) {
        return Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      _.escolherQtdParcelasNextStage(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 102,
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white.withOpacity(0),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      _.escolherQtdParcelasWidgetPreviousStage();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                        top: 102,
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white.withOpacity(0),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      _.escolherPercentualDeQuantidadeNextStage();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 189,
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white.withOpacity(0),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      _.escolherPercentualDeQuantidadePreviousStage();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                        top: 189,
                      ),
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white.withOpacity(0),
                      ),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text(
                    'Valor escolhido',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text(
                    'R\$ ${controller.arguments[0]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.teal[300]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: const [
                      Text(
                        'Escolha a',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' quantidade de parcelas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 05,
                ),
                controller.parcelasWidget,
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: const [
                      Text(
                        'Escolha o',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' percentual de garantia',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                controller.garantiaWidget,
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Garantia protegida',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal[300]),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Bitcoin caiu? Fique trânquilo! Na garantia protegida, você não recebe chamada de  margem e não é liquidada',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Continuar sem garantia',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal[300],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _.resultado();
                      },
                      child: const Text(
                        "Continuar",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal[300],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
