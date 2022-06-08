class Cliente {
  String? nome;
  String? sobreNome;
  String? cpf;

  Cliente({this.nome, this.sobreNome, this.cpf});

  Cliente.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    sobreNome = json['sobreNome'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['sobreNome'] = this.sobreNome;
    data['cpf'] = this.cpf;
    return data;
  }
}