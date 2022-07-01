import 'package:clean_architeture_project/core/data/repositories/salvar_carro_respository_imp.dart';
import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import 'package:clean_architeture_project/core/domain/imp/salvar_carro_imp.dart';
import 'package:clean_architeture_project/core/domain/repositories/salvar_carro_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroUseCase useCase = SalvarCarroUseCaseImp(SalvarCarroRepositoryImp());

    var carro = CarroEntity(cor: '', modelo: '', placa: 7172);

    var result = await useCase(carro);

    expect(result, true);
  });

  test('Espero que não salve o carro quando a placa for igual a 0', () async {
    SalvarCarroUseCase useCase = SalvarCarroUseCaseImp(SalvarCarroRepositoryImp());

    var carro = CarroEntity(cor: '', placa: 0, modelo: '');

    var result = await useCase(carro);

    expect(result, false);
  });
}
