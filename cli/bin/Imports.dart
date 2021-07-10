import 'package:cli/Import.dart' as imported;
import 'dart:convert';

void main(List<String> arguments) {
  imported.Import();
  print('Hello world!');
  String value = "Convert this";
  List ebytes = UTF8.encode(value);
  String encoded = BASE64.encode(ebytes);
  print('Encoded: ${encoded}');
}
