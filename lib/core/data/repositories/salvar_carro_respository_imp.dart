import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import 'package:clean_architeture_project/core/domain/repositories/salvar_carro_repository.dart';

class SalvarCarroRepositoryImp implements SalvarCarroUseCase {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.placa > 7171;
  }
}
