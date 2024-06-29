import 'package:imc_calculator_with_dart/services/imc_service.dart';
import 'package:test/test.dart';

void main() {
  test('Test calculate', () {
    expect(ImcService.calculate(1.6, 60).toStringAsFixed(2), equals("23.44"));
  });

  test("Test classificate",
      () => {expect(ImcService.classificate(23.44), equals("Saudável"))});
}
