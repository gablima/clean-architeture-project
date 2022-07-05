import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  late String modeloDoCarro;
  late int placaDoCarro;
  late String cores;

  CarroDto({required String cores, required String modeloDoCarro, required int placaDoCarro})
      : super(cor: cores, modelo: modeloDoCarro, placa: placaDoCarro);

  Map toJson() {
    //serializacao
    return {
      'modeloDoCarro': modeloDoCarro,
      'placaDoCarro': placaDoCarro,
      'cores': cores,
    };
  }

  static CarroDto fromJson(Map map) {
    //deserializacao
    return CarroDto(cores: map['cores'], modeloDoCarro: map['modeloDoCarro'], placaDoCarro: map['placaDoCarro']);
  }
}
