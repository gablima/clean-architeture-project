import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';

abstract class SalvarCarroUseCase {
  Future<bool> call(CarroEntity carroEntity);
}
