import '../entities/carro_entity.dart';

abstract class GetPlacaPorModeloUseCase {
  CarroEntity call(String cor);
}
