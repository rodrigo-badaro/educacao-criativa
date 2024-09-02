import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_model.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_service.dart';


class AutocompleteCidadeEstadoRepository {
  AutocompleteCidadeEstadoService service = AutocompleteCidadeEstadoService();
  List<AutocompleteCidadeEstadoModel> cidades = [];

  Future<List<AutocompleteCidadeEstadoModel>> loadCity() async => cidades = await service.fetch();
}
