import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'txt_hello': 'hello',
          'txt_by': 'good by',
        },
        'fa_IR': {
          'txt_hello': 'سلام',
          'txt_by': 'خداحافظ',
        }
      };
}
