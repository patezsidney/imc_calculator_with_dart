import 'package:imc_calculator_with_dart/models/person.dart';
import 'package:imc_calculator_with_dart/services/console_service.dart';
import 'package:imc_calculator_with_dart/services/imc_service.dart';

void execute() {
  print("Olá, vamos iniciar o processo de cauculo de IMC!");
  String name = ConsoleService.readTerminalWithAnswer("Digite o seu nome:");
  double height =
      ConsoleService.readDoubleWithAnswer("Digite sua altura em metros:");
  double weight = ConsoleService.readDoubleWithAnswer("Digite seu peso em Kg:");

  Person person = Person(name, height, weight);

  double imc = ImcService.calculatePersonImc(person);

  String classification = ImcService.classificate(imc);

  print("Seu IMC é: ${imc.toStringAsFixed(2)}");
  print("Sua classificação é: $classification");
}
