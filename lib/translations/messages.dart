import 'package:crypto_test/translations/messages/messages_en.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations {
  final MessagesEn _messagesEn = MessagesEn();

  @override
  Map<String, Map<String, String>> get keys {
    Map<String, Map<String, String>> combinedKeys = {
      ..._messagesEn.keys,
    };
    return combinedKeys;
  }
}
