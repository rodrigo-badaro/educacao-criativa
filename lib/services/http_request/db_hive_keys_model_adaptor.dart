import 'package:educacao_criativa/models/model_types.dart';
import 'package:educacao_criativa/services/http_request/db_hive_keys_model.dart';
import 'package:hive/hive.dart';

// Atualize para o caminho correto do seu modelo

class DBHiveKeysModelAdapter extends TypeAdapter<DBHiveKeysModel> {
  @override
  final int typeId = dbHiveKeysTypeId;

  @override
  DBHiveKeysModel read(BinaryReader reader) {
    return DBHiveKeysModel(
      firebaseID: reader.read(),
      createdAt: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, DBHiveKeysModel obj) {
    writer.write(obj.firebaseID);
    writer.write(obj.createdAt);
  }
}
