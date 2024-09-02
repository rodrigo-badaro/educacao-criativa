import 'package:educacao_criativa/models/model_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'tokens_model.freezed.dart';
part 'tokens_model.g.dart';

@freezed
class TokensModel with _$TokensModel {
  @HiveType(typeId: tokensModelType, adapterName: 'TokensAdapter')
  const factory TokensModel({
    @JsonKey(name: 'access_token') final String? accessToken,
    @JsonKey(name: 'refresh_token') final String? refreshToken,
  }) = _TokensModel;

  factory TokensModel.fromJson(Map<String, Object?> json) => _$TokensModelFromJson(json);
}
