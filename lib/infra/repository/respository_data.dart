import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:processo_seletivo/constant/default_img.dart';

import '../model/response_json_model.dart';

class RespositoryData {
  ResponseDadaJsonModel _requestDadaJsonModel;
  Future<ResponseDadaJsonModel> inserirDados(
      {String fullname,
      String email,
      String ltv,
      String amount,
      String term}) async {
    Map<String, dynamic> toMap = {
      "fullname": fullname,
      "email": email,
      "ltv": ltv,
      "amount": amount,
      "term": term,
      "has_protected_collateral": 'false',
    };

    final response =
        await http.post(Uri.parse(ulrDNS), body: jsonEncode(toMap));
    if (response.statusCode == 201) {
      String convertUtlf = const Utf8Decoder().convert(response.bodyBytes);
      final listacometario = responseDadaJsonModelFromJson(convertUtlf);
      _requestDadaJsonModel = listacometario;
    }
    return _requestDadaJsonModel;
  }
}
