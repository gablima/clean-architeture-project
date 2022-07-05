class CarroEntity {
  late String modelo;
  late int placa;
  late String cor;

  CarroEntity({required this.cor, required this.modelo, required this.placa});

  String carroCor() {
    if (cor != "vermelho") {
      cor = "verde";
    }
    return "vermelho";
  }

  String modeloCor() {
    if (cor != "vermelha") {
      return modelo = "honda";
    }
    return modelo = "ferrari";
  }
}
