import 'package:clean_architeture_project/core/data/datasources/get_carros_por_modelo_datasource.dart';
import 'package:clean_architeture_project/core/data/dtos/carro_dto.dart';

class GetCarrosPorModeloDataSourceImp implements GetCarrosPorModeloDataSource {
  var jsonFerrari = {
    'modeloDoCarro': 'ferrari',
    'placaDoCarro': 11771,
    'cores': 'vermelha',
  };
  var jsonAny = {
    'modeloDoCarro': 'honda',
    'placaDoCarro': 12342,
    'cores': 'vermelha',
  };

  @override
  CarroDto call(String modelo) {
    if (modelo.contains("ferrari")) {
      return CarroDto.fromJson(jsonFerrari);
    }
    return CarroDto.fromJson(jsonAny);
  }
}
