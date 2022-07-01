import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';

import '../repositories/salvar_carro_repository.dart';

class SalvarCarroUseCaseImp implements SalvarCarroUseCase {
  final SalvarCarroUseCase _salvarCarroUseCase;
  SalvarCarroUseCaseImp(this._salvarCarroUseCase);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return await _salvarCarroUseCase(carroEntity);
  }
}
