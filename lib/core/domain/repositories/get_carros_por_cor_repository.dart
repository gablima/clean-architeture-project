import 'package:clean_architeture_project/core/domain/entities/carro_entity.dart';

abstract class GetCarrosPorModeloRepository {
  CarroEntity call(String modelo);
}
