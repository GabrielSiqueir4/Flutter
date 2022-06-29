// ignore_for_file: implementation_imports

import 'package:contasreceber/model/cliente.dart';
import 'package:flutter/src/material/dropdown.dart';

class Conta {
  String? id;
  DateTime? dtEmissao;
  DateTime? dtVencimento;
  FormaDePagamento? formaDePagamento;
  Cliente? cliente;
  double? valor;
  String? descricao;
  String? status = "Pendente";

  Conta(
      {this.dtEmissao,
      this.dtVencimento,
      this.formaDePagamento,
      this.cliente,
      this.valor,
      this.descricao,
      this.status});

  Conta.fromJson(Map<String, dynamic> json) {
    id = json[
        'id']; // se não tiver ID no Json ao salvar o modal, sempre será create e nunca update
   dtEmissao = json['dtEmissao'] == null
        ? null
        : DateTime.parse(json['dtEmissao']);
    dtVencimento= json['dtVencimento'] == null
        ? null
        : DateTime.parse(json['dtVencimento']);
    formaDePagamento = json['formaDePagamento'] != null
        ? new FormaDePagamento.fromJson(json['formaDePagamento'])
        : null;
    cliente =
        json['cliente'] != null ? new Cliente.fromJson(json['cliente']) : null;
    valor = json['valor'];
    descricao = json['descricao'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (dtEmissao != null) {
      data['dtEmissao'] = this.dtEmissao!.toIso8601String();
      data['dtVencimento'] = this.dtVencimento!.toIso8601String();
    }

    if (this.formaDePagamento != null) {
      data['formaDePagamento'] = this.formaDePagamento!.toJson();
    }
    if (this.cliente != null) {
      data['cliente'] = this.cliente!.toJson();
    }
    data['valor'] = this.valor.toString();
    data['descricao'] = this.descricao;
    data['status'] = this.status;
    return data;
  }
}

class FormaDePagamento {
  String? id;
  String? nomeFormaPgm;

  FormaDePagamento({this.id});

  FormaDePagamento.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeFormaPgm = json['nomeFormaPgm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nomeFormaPgm'] = this.nomeFormaPgm;
    return data;
  }

  map(DropdownMenuItem<String> Function(String value) param0) {}
}
