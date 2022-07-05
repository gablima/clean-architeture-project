import 'package:clean_architeture_project/core/data/dtos/carro_dto.dart';

abstract class GetCarrosPorModeloDataSource {
  CarroDto call(String modelo);
}
