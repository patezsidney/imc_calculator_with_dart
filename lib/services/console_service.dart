import 'dart:convert';
import 'dart:io';

class ConsoleService {
  static String readTerminal() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String readTerminalWithAnswer(String answer) {
    print(answer);
    return readTerminal();
  }

  static double readDoubleWithAnswer(String answer) {
    double? value;
    String terminalResponse = "";
    do {
      try {
        terminalResponse = readTerminalWithAnswer(answer);
        if (terminalResponse.contains(",")) {
          terminalResponse = terminalResponse.replaceAll(",", ".");
        }
        value = double.parse(terminalResponse);
      } catch (e) {
        print("The value informed `$terminalResponse` is invalid, try again");
      }
    } while (value == null);
    return value;
  }
}
