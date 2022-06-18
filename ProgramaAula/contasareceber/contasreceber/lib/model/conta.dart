import 'package:contasreceber/model/cliente.dart';

class Conta {
  String? dtEmissao;
  String? dtVencimento;
  FormaDePagamento? formaDePagamento;
  Cliente? cliente;
  String? valor;
  String? descricao;
  String? status;
  String? id;

  Conta(
      {this.dtEmissao,
      this.dtVencimento,
      this.formaDePagamento,
      this.cliente,
      this.valor,
      this.descricao,
      this.status});

  Conta.fromJson(Map<String, dynamic> json) {
    dtEmissao = json['dtEmissao'];
    dtVencimento = json['dtVencimento'];
    formaDePagamento = json['formaDePagamento'] != null
        ? new FormaDePagamento.fromJson(json['formaDePagamento'])
        : null;
    cliente = json['cliente'] != null
        ? new Cliente.fromJson(json['cliente'])
        : null;
    valor = json['valor'];
    descricao = json['descricao'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dtEmissao'] = this.dtEmissao;
    data['dtVencimento'] = this.dtVencimento;
    if (this.formaDePagamento != null) {
      data['formaDePagamento'] = this.formaDePagamento!.toJson();
    }
    if (this.cliente != null) {
      data['cliente'] = this.cliente!.toJson();
    }
    data['valor'] = this.valor;
    data['descricao'] = this.descricao;
    data['status'] = this.status;
    return data;
  }

}

class FormaDePagamento {
  String? id;

  FormaDePagamento({this.id});

  FormaDePagamento.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}
