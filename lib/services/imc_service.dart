import '../models/person.dart';

class ImcService {
  static double calculate(double height, double wheight) {
    return wheight / (height * height);
  }

  static String classificate(double imcIndex) {
    String imcClassification;

    if (imcIndex < 16) {
      imcClassification = "Magreza grave";
    } else if (imcIndex < 17) {
      imcClassification = "Magreza moderada";
    } else if (imcIndex < 18.5) {
      imcClassification = "Magreza leve";
    } else if (imcIndex < 25) {
      imcClassification = "Saudável";
    } else if (imcIndex < 30) {
      imcClassification = "Sobrepeso";
    } else if (imcIndex < 35) {
      imcClassification = "Obesidade Grau I";
    } else if (imcIndex < 40) {
      imcClassification = "Obesidade Grau II (severa)";
    } else {
      imcClassification = "Obesidade Grau III (mórbida)";
    }

    return imcClassification;
  }

  static double calculatePersonImc(Person person) {
    return calculate(person.getHeight(), person.getWeigth());
  }
}
