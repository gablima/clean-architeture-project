import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import '../repositories/get_carros_por_cor_repository.dart';
import '../usecases/get_placa_por_modelo_uc.dart';

class GetCarroPorModeloUseCaseImp implements GetPlacaPorModeloUseCase {
  final GetCarrosPorModeloRepository _getCarrosPorModeloRepository;

  GetCarroPorModeloUseCaseImp(this._getCarrosPorModeloRepository);

  @override
  CarroEntity call(String modelo) {
    return _getCarrosPorModeloRepository(modelo);
  }
}
