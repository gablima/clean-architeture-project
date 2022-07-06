import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';

import '../../domain/usecases/get_placa_por_modelo_uc.dart';

class CarroController {
  final GetPlacaPorModeloUseCase _getPlacaPorModeloUseCase;

  CarroController(this._getPlacaPorModeloUseCase);

  static CarroEntity carroEntity;

  getCarrosPorModelo(String modelo) {
    carroEntity = _getPlacaPorModeloUseCase(modelo);
  }
}
