import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "Hello World!": "Hello World!",
        },
        "sw_TZ": {
          "Hello World!": "Salamu, Dunia!",
        }
      };
}
