import 'package:clean_architeture_project/core/data/datasources/get_carros_por_modelo_datasource.dart';
import 'package:clean_architeture_project/core/data/datasources/local/get_carros_por_local_datasource.dart';
import 'package:clean_architeture_project/core/data/repositories/get_carros_por_modelo_repository_imp.dart';
import 'package:clean_architeture_project/core/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorModeloDataSource dataSource = GetCarrosPorModeloDataSourceImp();

  GetCarrosPorModeloRepository repository = GetCarrosPorModeloRepositoryImp(dataSource);

  test('Devolve um carro independete do modelo', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
