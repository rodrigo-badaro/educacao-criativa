class AutocompleteCidadeEstadoModel {
  final int id;
  final String nome;
  final String estado;
  final String siglaEstado;
  final String regiao;
  final String siglaRegiao;

  AutocompleteCidadeEstadoModel({
    required this.id,
    required this.nome,
    required this.estado,
    required this.siglaEstado,
    required this.regiao,
    required this.siglaRegiao,
  });

  factory AutocompleteCidadeEstadoModel.fromMap(Map<String, dynamic> json) {
    return AutocompleteCidadeEstadoModel(
      id: json['id'],
      nome: json['nome'],
      estado: json['microrregiao']['mesorregiao']['UF']['nome'],
      siglaEstado: json['microrregiao']['mesorregiao']['UF']['sigla'],
      regiao: json['microrregiao']['mesorregiao']['UF']['regiao']['nome'],
      siglaRegiao: json['microrregiao']['mesorregiao']['UF']['regiao']['sigla'],
    );
  }
}