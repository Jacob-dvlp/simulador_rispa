import 'package:processo_seletivo/util/method_util.dart';

import 'imports.dart';

class PageParcelaController extends GetxController with StateMixin {
  final arguments = Get.arguments;
  final ProviderData _providerData;
  MethodUtil methodUtil = MethodUtil();
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;
  int valueParcelas = 2;
  String qtParcelas;
  int valueGarantia = 14;
  double btcon = 100000000;
  double resultCollater;
  String qtPercentualGarantia;
  ProgressTimeline parcelasWidget;
  ProgressTimeline garantiaWidget;
  bool isLoading = false;
  ResponseDadaJsonModel responseDadaModelJson;

  List<SingleState> parcelas = [
    SingleState(stateTitle: "3 "),
    SingleState(stateTitle: "6 "),
    SingleState(stateTitle: "9 "),
    SingleState(stateTitle: "12 "),
  ];

  List<SingleState> garantia = [
    SingleState(stateTitle: "20%"),
    SingleState(stateTitle: "35%"),
    SingleState(stateTitle: "50%"),
  ];

  PageParcelaController(this._providerData);

  verficarEtapas() {
    if (valueParcelas <= 1 || valueGarantia <= 14) {
      Get.snackbar('Falha',
          'Informe a Percentual de garantia ou Quantidade de parcelas ',
          icon: const Icon(Icons.info), backgroundColor: Colors.red);
    }
  }

  escolherQtdParcelasNextStage(valuefront) {
    valueParcelas++;
    if (valueParcelas == 3) {
      qtParcelas = '3';
      update();
    } else if (valueParcelas == 4) {
      qtParcelas = '6';
      update();
    } else if (valueParcelas == 5) {
      qtParcelas = '9';
      update();
    } else if (valueParcelas == 6) {
      qtParcelas = '12';
      update();
    }
    parcelasWidget.gotoNextStage();
    update();
  }

  escolherQtdParcelasWidgetPreviousStage() {
    valueParcelas--;
    parcelasWidget.gotoPreviousStage();
    update();
  }

  escolherPercentualDeQuantidadeNextStage() {
    valueGarantia++;
    if (valueGarantia == 15) {
      qtPercentualGarantia = '20';
      update();
    } else if (valueGarantia == 16) {
      qtPercentualGarantia = '35';
      update();
    } else if (valueGarantia == 17) {
      qtPercentualGarantia = '50';
      update();
    }
    garantiaWidget.gotoNextStage();
    update();
  }

  escolherPercentualDeQuantidadePreviousStage() {
    valueGarantia--;
    garantiaWidget.gotoPreviousStage();
    update();
  }

  void isLoadingData(bool value) {
    isLoading = value;
    update();
  }

  Future resultado() async {
    isLoadingData(true);
    verficarEtapas();
    change([], status: RxStatus.loading());
    try {
      if (valueGarantia <= 14 || valueParcelas <= 1) {
        Get.snackbar('Falha',
            'Informe a Percentual de garantia ou Quantidade de parcelas ',
            icon: const Icon(Icons.info), backgroundColor: Colors.red);
      }
      if (valueGarantia >= 15 && valueParcelas >= 3) {
        Get.toNamed(ResultPagePage.routeName);
        responseDadaModelJson = await _providerData.insert(
          fullname: arguments[1],
          email: arguments[2],
          ltv: qtPercentualGarantia,
          amount: arguments[0].toString(),
          term: qtParcelas,
        );
        final collater = responseDadaModelJson.collateral;
        resultCollater = collater / btcon;

        change([], status: RxStatus.success());
      }
    } catch (e) {
      change(
        [],
        status: RxStatus.error(),
      );
    }
    isLoadingData(false);
  }

  @override
  void onInit() {
    parcelasWidget = ProgressTimeline(
      states: parcelas,
      iconSize: 20,
      height: 65,
      connectorColor: Colors.teal[300],
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    );

    garantiaWidget = ProgressTimeline(
      states: garantia,
      iconSize: 20,
      connectorLength: 130,
      height: 40,
      connectorColor: Colors.teal[300],
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    );
    super.onInit();
  }
}
