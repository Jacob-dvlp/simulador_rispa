import '../../page/page_parcela/imports.dart';

class ProviderData {
  final RespositoryData _respositoryData;

  ProviderData(this._respositoryData);

  Future<ResponseDadaJsonModel> insert(
      {String fullname, String email, String ltv, String amount, String term}) {
    return _respositoryData.inserirDados(
      fullname: fullname,
      email: email,
      ltv: ltv,
      amount: amount,
      term: term,
    );
  }
}
