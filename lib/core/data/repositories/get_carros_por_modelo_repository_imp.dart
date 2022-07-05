import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../datasources/get_carros_por_modelo_datasource.dart';

class GetCarrosPorModeloRepositoryImp implements GetCarrosPorModeloRepository {
  final GetCarrosPorModeloDataSource _getCarrosPorModeloDataSource;

  GetCarrosPorModeloRepositoryImp(this._getCarrosPorModeloDataSource);

  @override
  CarroEntity call(String modelo) {
    return _getCarrosPorModeloDataSource(modelo);
  }
}
