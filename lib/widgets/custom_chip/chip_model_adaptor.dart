import 'package:educacao_criativa/hive_model_type_id.dart';
import 'package:educacao_criativa/widgets/custom_chip/chip_model.dart';
import 'package:hive/hive.dart';


class ChipModelAdapter extends TypeAdapter<ChipModel> {
  @override
  final int typeId = chipTypeId;

  @override
  ChipModel read(BinaryReader reader) {
    // Assegure-se de ler na mesma ordem em que escreveu no método write
    var title = reader.readString();
    var type = reader.readString();

    // Retorne uma nova instância do seu modelo
    return ChipModel(
      title: title,
      type: type,
    );
  }

  @override
  void write(BinaryWriter writer, ChipModel obj) {
    // Assegure-se de escrever na mesma ordem em que lê no método read
    writer.writeString(obj.title);
    writer.writeString(obj.type);
  }
}
