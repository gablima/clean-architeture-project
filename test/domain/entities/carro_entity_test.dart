import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  CarroEntity entity = CarroEntity(cor: 'vermelha', modelo: 'ferrari', placa: 16616);

  test('Espero que a entidade não seja nula', () {
    expect(entity, isNotNull);
  });

  test('Teste para validar se a cor é vermelha', () {
    var e = 'vermelha';
    expect(entity.cor, e);
  });

  test('Teste para validar se o modelo é ferrari', () {
    var m = 'ferrari';
    expect(entity.modelo, m);
  });
}
