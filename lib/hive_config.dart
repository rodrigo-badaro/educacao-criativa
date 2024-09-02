import 'dart:io';

import 'package:educacao_criativa/models/administrador_info_model.dart';
import 'package:educacao_criativa/models/aluno_info_model.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/deficiencia_model.dart';
import 'package:educacao_criativa/models/diretor_info_model.dart';
import 'package:educacao_criativa/models/endereco_model.dart';
import 'package:educacao_criativa/models/espaco/espaco_model.dart';
import 'package:educacao_criativa/models/estacao_item_model.dart';
import 'package:educacao_criativa/models/estacao_model.dart';
import 'package:educacao_criativa/models/formato_notas_model.dart';
import 'package:educacao_criativa/models/item_model.dart';
import 'package:educacao_criativa/models/master_cliente_info_model.dart';
import 'package:educacao_criativa/models/material_apoio/material_apoio_model.dart';
import 'package:educacao_criativa/models/material_apoio_nome/material_apoio_nome_model.dart';
import 'package:educacao_criativa/models/modalidade_model.dart';
import 'package:educacao_criativa/models/pedagoga_fagundez_info_model.dart';
import 'package:educacao_criativa/models/pedagoga_info_model.dart';
import 'package:educacao_criativa/models/periodicidade_model.dart';
import 'package:educacao_criativa/models/professor_info_model.dart';
import 'package:educacao_criativa/models/secretaria_info_model.dart';
import 'package:educacao_criativa/models/serie_model.dart';
import 'package:educacao_criativa/models/sexo_model.dart';
import 'package:educacao_criativa/models/telefone_model.dart';
import 'package:educacao_criativa/models/tipo_de_unidade_model.dart';
import 'package:educacao_criativa/models/tokens_model.dart';
import 'package:educacao_criativa/models/unidade_model.dart';
import 'package:educacao_criativa/models/usuario_model.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model_adaptor.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveConfig {
  static start() async {
    if (kIsWeb) {
      Hive.initFlutter();
    } else {
      Directory dir = await getApplicationDocumentsDirectory();
      Hive.initFlutter(dir.path);
    }

    Hive
      ..registerAdapter(DBHiveKeysModelAdapter(), override: true)
      ..registerAdapter(TokensAdapter(), override: true)
      // ..registerAdapter(NoticiaAdapter(), override: true)
      ..registerAdapter(ClienteAdapter(), override: true)
      ..registerAdapter(ModalidadeModelAdapter(), override: true)
      ..registerAdapter(SerieModelAdapter(), override: true)
      ..registerAdapter(TelefoneModelAdapter(), override: true)
      ..registerAdapter(UsuarioModelAdapter(), override: true)
      ..registerAdapter(UnidadeAdapter(), override: true)
      ..registerAdapter(EnderecoAdapter(), override: true)
      // ..registerAdapter(AnoLetivoAdapter(), override: true)
      ..registerAdapter(EstacaoModelAdapter(), override: true)
      ..registerAdapter(EstacaoItemModelAdapter(), override: true)
      ..registerAdapter(ItemModelAdapter(), override: true)
      ..registerAdapter(DeficienciaModelAdapter(), override: true)
      // ..registerAdapter(CriterioAvaliacaoAdapter(), override: true)
      ..registerAdapter(PeriodicidadeAdapter(), override: true)
      ..registerAdapter(FormatoNotaModelAdapter(), override: true)
      ..registerAdapter(MaterialApoioNomeAdapter(), override: true)
      ..registerAdapter(MaterialApoioAdapter(), override: true)
      ..registerAdapter(EspacoModelAdapter(), override: true)

      // ..registerAdapter(TurnoAdapter(), override: true)
      // ..registerAdapter(TurmaModelAdapter(), override: true)
      ..registerAdapter(SexoModelAdapter(), override: true)
      // ..registerAdapter(PerfilUsuarioAdapter(), override: true)
      // ..registerAdapter(EstadoMatriculaAlunoTurmaAdapter(), override: true)
      // ..registerAdapter(MatriculaAlunoTurmaAdapter(), override: true)
      // ..registerAdapter(EspacoAdapter(), override: true)
      ..registerAdapter(MasterClienteInfoAdapter(), override: true)
      ..registerAdapter(AdministradorInfoAdapter(), override: true)
      ..registerAdapter(PedagogaFagundezInfoAdapter(), override: true)
      ..registerAdapter(DiretorInfoAdapter(), override: true)
      ..registerAdapter(SecretariaInfoAdapter(), override: true)
      ..registerAdapter(PedagogaInfoAdapter(), override: true)
      ..registerAdapter(ProfessorInfoAdapter(), override: true)
      ..registerAdapter(AlunoInfoAdapter(), override: true)
      ..registerAdapter(TipoDeUnidadeModelAdapter(), override: true);
  }
}
