import 'package:educacao_criativa/converters/sexo_converter.dart';
import 'package:educacao_criativa/models/administrador_info_model.dart';
import 'package:educacao_criativa/models/aluno_info_model.dart';
import 'package:educacao_criativa/models/cliente_model.dart';
import 'package:educacao_criativa/models/diretor_info_model.dart';
import 'package:educacao_criativa/models/endereco_model.dart';
import 'package:educacao_criativa/models/master_cliente_info_model.dart';
import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/models/pedagoga_fagundez_info_model.dart';
import 'package:educacao_criativa/models/pedagoga_info_model.dart';
import 'package:educacao_criativa/models/professor_info_model.dart';
import 'package:educacao_criativa/models/secretaria_info_model.dart';
import 'package:educacao_criativa/models/sexo_model.dart';
import 'package:educacao_criativa/models/telefone_model.dart';
import 'package:educacao_criativa/services/date_time_adapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'usuario_model.freezed.dart';
part 'usuario_model.g.dart';

@freezed
class UsuarioModel with _$UsuarioModel {
  const UsuarioModel._();

  @HiveType(typeId: userModelType, adapterName: 'UsuarioModelAdapter')
  const factory UsuarioModel({
    @HiveField(0) final int? id,
    @HiveField(1) final String? nome,
    @HiveField(2) final String? username,
    @HiveField(3) final String? email,
    @HiveField(4) final String? cpf,
    @HiveField(5) @DateTimeAdapter() @JsonKey(name: 'data_nascimento') final DateTime? dataNascimento,
    @HiveField(6) @JsonKey(name: 'nome_pai') final String? nomePai,
    @HiveField(7) @JsonKey(name: 'nome_mae') final String? nomeMae,
    @HiveField(8) final TelefoneModel? telefone,
    @HiveField(9) final EnderecoModel? endereco,
    @HiveField(10) final ClienteModel? cliente,
    @HiveField(11) @SexoConverter() final SexoModel? sexo,
    @DateTimeAdapter() @HiveField(12) @JsonKey(name: 'created_at') final DateTime? createdAt,
    @DateTimeAdapter() @HiveField(13) @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    @HiveField(14) @JsonKey(name: 'is_secure') final bool? isSecure,
    @HiveField(15) @JsonKey(name: 'is_root') final bool? isRoot,
    @HiveField(16) final AdministradorInfoModel? administrador,
    @HiveField(17) @JsonKey(name: 'pedagoga_fagundez') final PedagogaFagundezInfoModel? pedagogaFagundez,
    @HiveField(18) @JsonKey(name: 'master_cliente') final MasterClienteInfoModel? masterCliente,
    @HiveField(19) final DiretorInfoModel? diretor,
    @HiveField(20) final SecretariaInfoModel? secretaria,
    @HiveField(21) final PedagogaInfoModel? pedagoga,
    @HiveField(22) final ProfessorInfoModel? professor,
    @HiveField(23) final AlunoInfoModel? aluno,
  }) = _UsuarioModel;

  factory UsuarioModel.fromJson(Map<String, Object?> json) => _$UsuarioModelFromJson(json);

  bool get isAdministrador => administrador != null;
  bool get isPedagogaFagundez => pedagogaFagundez != null;
  bool get isMasterCliente => masterCliente != null;
  bool get isDiretor => diretor != null;
  bool get isSecretaria => secretaria != null;
  bool get isPedagoga => pedagoga != null;
  bool get isProfessor => professor != null;
  bool get isAluno => aluno != null;
}
