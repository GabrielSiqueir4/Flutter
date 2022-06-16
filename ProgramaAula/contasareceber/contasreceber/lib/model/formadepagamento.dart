class FormaDePagamento {
  String? nomeFormaPgm;
  String? id;
  FormaDePagamento({this.nomeFormaPgm});

  FormaDePagamento.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeFormaPgm = json['nomeFormaPgm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeFormaPgm'] = this.nomeFormaPgm;
    return data;
  }
}
