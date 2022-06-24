import '../imports.dart';

class WidgetCustomResult extends GetView<PageParcelaController> {
  final ResponseDadaJsonModel dadaJsonModel;

  const WidgetCustomResult({Key key, this.dadaJsonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Resultado da Simulação',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            WidgetCustomBodyResult(
              titulo: 'Valor escolhido',
              valor: 'R\$ ${dadaJsonModel.netValue}',
            ),
            btcConvert(),
            WidgetCustomBodyResult(
              titulo: 'Taxa de juros',
              valor: ' ${dadaJsonModel.interestRate}% a.m',
            ),
            WidgetCustomBodyResult(
              titulo: 'Percentual de garantia',
              valor: ' ${dadaJsonModel.ltv}%',
            ),
            WidgetCustomBodyResult(
                titulo: 'Primeiro vencimento',
                valor: dadaJsonModel.firstDueDate),
            WidgetCustomBodyResult(
              titulo: 'IOF',
              valor: 'R\$ ${dadaJsonModel.iofFee}',
            ),
            WidgetCustomBodyResult(
              titulo: 'Tarifa da plataforma',
              valor: 'R\$ ${dadaJsonModel.originationFee}',
            ),
            WidgetCustomBodyResult(
              titulo: 'Total financiado',
              valor: 'R\$ ${dadaJsonModel.contractValue}',
            ),
            WidgetCustomBodyResult(
              titulo: 'CET mensal',
              valor: '${dadaJsonModel.monthlyRate}%',
            ),
            WidgetCustomBodyResult(
              titulo: 'CET anual',
              valor: '${dadaJsonModel.annualRate}%',
            ),
            WidgetCustomBodyResult(
              titulo: 'Cotação do BTC',
              valor: 'R\$ ${dadaJsonModel.collateralUnitPrice}',
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(CadastroPage.routeName);
                  },
                  child: const Text(
                    "Nova simulação",
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
      ),
    );
  }

  Widget btcConvert() {
    return WidgetCustomBodyResult(
      titulo: 'Garantia',
      valor: 'B ${controller.resultCollater}%',
    );
  }
}
