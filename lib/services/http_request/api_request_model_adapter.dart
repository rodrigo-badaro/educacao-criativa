import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/services/http_request/api_request_model.dart';
import 'package:hive/hive.dart';

class ApiRequestModelAdapter extends TypeAdapter<ApiRequestModel> {
  @override
  final int typeId = requestApiTypeId;

  @override
  ApiRequestModel read(BinaryReader reader) {
    return ApiRequestModel(
      pagina: reader.read(),
      totalPaginas: reader.read(),
      registros: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, ApiRequestModel obj) {
    writer.write(obj.pagina);
    writer.write(obj.totalPaginas);
    writer.write(obj.registros);
  }
}
