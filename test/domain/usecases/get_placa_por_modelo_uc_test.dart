import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import 'package:clean_architeture_project/core/domain/imp/get_qtd_placa_imp.dart';
import 'package:clean_architeture_project/core/domain/usecases/get_placa_por_modelo_uc.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetPlacaPorModeloUseCase useCase = GetPlacaPorModeloUseCaseImp();
    var result = useCase('vermelho');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro com a placa 717171 quando o carro for vermelho', () {
    GetPlacaPorModeloUseCase useCase = GetPlacaPorModeloUseCaseImp();
    var result = useCase('vermelho');
    expect(result.placa, 717171);
  });
}
