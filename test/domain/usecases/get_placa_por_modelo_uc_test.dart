import 'package:clean_architeture_project/core/data/datasources/get_carros_por_modelo_datasource.dart';
import 'package:clean_architeture_project/core/data/datasources/local/get_carros_por_local_datasource.dart';
import 'package:clean_architeture_project/core/data/repositories/get_carros_por_modelo_repository_imp.dart';
import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';
import 'package:clean_architeture_project/core/domain/imp/get_carros_por_modelo_imp.dart';
import 'package:clean_architeture_project/core/domain/usecases/get_placa_por_modelo_uc.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorModeloDataSource dataSource = GetCarrosPorModeloDataSourceImp();

  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetPlacaPorModeloUseCase useCase = GetCarroPorModeloUseCaseImp(GetCarrosPorModeloRepositoryImp(dataSource));
    var result = useCase('ferrari');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro com a placa 717171 quando o carro for vermelho', () {
    GetPlacaPorModeloUseCase useCase = GetCarroPorModeloUseCaseImp(GetCarrosPorModeloRepositoryImp(dataSource));
    var result = useCase('vermelho');
    expect(result.placa, 12342);
  });
}
