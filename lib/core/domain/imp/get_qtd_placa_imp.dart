import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import '../usecases/get_placa_por_modelo_uc.dart';

class GetPlacaPorModeloUseCaseImp implements GetPlacaPorModeloUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains("vermelho")) {
      return CarroEntity(cor: "vermelho", placa: 717171, modelo: "ferrari");
    }
    return CarroEntity(cor: "verde", placa: 11111, modelo: "honda");
  }
}
