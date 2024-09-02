import 'dart:convert';

import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_model.dart';
import 'package:http/http.dart' as http;

class AutocompleteCidadeEstadoService {
  Future<List<AutocompleteCidadeEstadoModel>> fetch() async {
    List<AutocompleteCidadeEstadoModel> cidades = [];
    try {
      final response = await http.get(Uri.parse(
          'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/'));

      var res = jsonDecode(response.body);

      if ((response.statusCode / 100).round() == 2) {
        for (var i = 0; i < res.length; i++) {
          cidades.add(AutocompleteCidadeEstadoModel.fromMap(res[i]));
        }
      }
    } on http.ClientException catch (e) {
      throw (e.message);
    }
    return cidades;
  }
}
