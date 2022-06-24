import 'dart:convert';

ResponseDadaJsonModel responseDadaJsonModelFromJson(String str) =>
    ResponseDadaJsonModel.fromJson(json.decode(str));

String responseDadaJsonModelToJson(ResponseDadaJsonModel data) =>
    json.encode(data.toJson());

class ResponseDadaJsonModel {
  ResponseDadaJsonModel({
    this.id,
    this.fullname,
    this.email,
    this.ltv,
    this.contractValue,
    this.netValue,
    this.installmentValue,
    this.lastInstallmentValue,
    this.iofFee,
    this.originationFee,
    this.term,
    this.collateral,
    this.collateralInBrl,
    this.collateralUnitPrice,
    this.firstDueDate,
    this.lastDueDate,
    this.interestRate,
    this.monthlyRate,
    this.annualRate,
  });

  String id;
  String fullname;
  String email;
  num ltv;
  num contractValue;
  num netValue;
  num installmentValue;
  num lastInstallmentValue;
  num iofFee;
  num originationFee;
  num term;
  num collateral;
  num collateralInBrl;
  num collateralUnitPrice;
  String firstDueDate;
  String lastDueDate;
  num interestRate;
  num monthlyRate;
  num annualRate;

  factory ResponseDadaJsonModel.fromJson(Map<String, dynamic> json) =>
      ResponseDadaJsonModel(
        id: json["id"],
        fullname: json["fullname"],
        email: json["email"],
        ltv: json["ltv"],
        contractValue: json["contract_value"].toDouble(),
        netValue: json["net_value"],
        installmentValue: json["installment_value"].toDouble(),
        lastInstallmentValue: json["last_installment_value"].toDouble(),
        iofFee: json["iof_fee"].toDouble(),
        originationFee: json["origination_fee"].toDouble(),
        term: json["term"],
        collateral: json["collateral"],
        collateralInBrl: json["collateral_in_brl"],
        collateralUnitPrice: json["collateral_unit_price"].toDouble(),
        firstDueDate: json["first_due_date"],
        lastDueDate: json["last_due_date"],
        interestRate: json["interest_rate"].toDouble(),
        monthlyRate: json["monthly_rate"].toDouble(),
        annualRate: json["annual_rate"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "email": email,
        "ltv": ltv,
        "contract_value": contractValue,
        "net_value": netValue,
        "installment_value": installmentValue,
        "last_installment_value": lastInstallmentValue,
        "iof_fee": iofFee,
        "origination_fee": originationFee,
        "term": term,
        "collateral": collateral,
        "collateral_in_brl": collateralInBrl,
        "collateral_unit_price": collateralUnitPrice,
        "first_due_date": firstDueDate,
        "last_due_date": lastDueDate,
        "interest_rate": interestRate,
        "monthly_rate": monthlyRate,
        "annual_rate": annualRate,
      };
}
