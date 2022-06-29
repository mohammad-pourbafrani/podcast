import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'search': 'search Podcast ...',
          'txt_by': 'good by',
        },
        'fa_IR': {
          'search': 'جستوجوی پادکست ...',
          'txt_by': 'خداحافظ',
        }
      };
}
