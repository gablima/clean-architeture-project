import 'package:clean_architeture_project/core/data/datasources/get_carros_por_modelo_datasource.dart';
import 'package:clean_architeture_project/core/data/repositories/get_carros_por_modelo_repository_imp.dart';
import 'package:clean_architeture_project/core/domain/imp/get_carros_por_modelo_imp.dart';
import 'package:clean_architeture_project/core/domain/imp/salvar_carro_imp.dart';
import 'package:clean_architeture_project/core/domain/usecases/get_placa_por_modelo_uc.dart';
import 'package:clean_architeture_project/core/presentation/controller/controller.dart';
import 'package:get_it/get_it.dart';

import '../data/datasources/local/get_carros_por_local_datasource.dart';
import '../domain/repositories/get_carros_por_cor_repository.dart';
import '../domain/repositories/salvar_carro_repository.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarrosPorModeloDataSource>(() => GetCarrosPorModeloDataSourceImp());

    //repositories
    getIt.registerLazySingleton<GetCarrosPorModeloRepository>(() => GetCarrosPorModeloRepositoryImp(getIt()));

    //usecases
    //getIt.registerLazySingleton<SalvarCarroUseCase>(() => SalvarCarroUseCaseImp(getIt()));

    getIt.registerLazySingleton<GetPlacaPorModeloUseCase>(() => GetCarroPorModeloUseCaseImp(getIt()));

    //blocs(controller)
    getIt.registerFactory<CarroController>(() => CarroController(getIt()));
  }
  //data -> datasource
  //usecases
  //blocs(controller)
}
