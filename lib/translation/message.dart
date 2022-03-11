import 'package:get/get.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "hello": "hello world",
          "logged_in": "logged in as @name \n email @email.com"
        },
        'hi_IN': {
          'hello': 'नमस्ते दुनिया',
          'लॉग इन': 'लॉग इन किया गया है @name \n ईमेल @email.com',
        }
      };
}
