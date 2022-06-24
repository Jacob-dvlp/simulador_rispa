
import '../imports.dart';

class WidgetCustomBody extends StatelessWidget {
  const WidgetCustomBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'De quanto',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.teal[300],
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  const Text(
                    'você precisa?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text('Insira  um valor entre'),
                  Text(
                    'R\$500 a R\$300.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: GetBuilder<QuantiaController>(
                    init: QuantiaController(),
                    builder: (controller) {
                      return Form(
                        key: controller.formKey,
                        child: TextFormField(
                          controller: controller.valor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.teal[300]),
                            ),
                            label: const Text('R\$'),
                            labelStyle: TextStyle(
                              color: Colors.teal[300],
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.teal[300]),
                            ),
                          ),
                        ),
                      );
                    })),
            const SizedBox(
              height: 100,
            ),
            GetBuilder<QuantiaController>(builder: (controller) {
              return Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => {controller.verficarCampoValor()},
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
              );
            })
          ],
        ),
      ),
    );
  }
}
