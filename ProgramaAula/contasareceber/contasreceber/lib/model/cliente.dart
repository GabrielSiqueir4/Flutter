class Cliente {
  String? nome;
  String? sobreNome;
  String? cpf;
  String? id;

  Cliente({this.nome, this.sobreNome, this.cpf});

  Cliente.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    sobreNome = json['sobreNome'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['sobreNome'] = this.sobreNome;
    data['cpf'] = this.cpf;
    return data;
  }
}
