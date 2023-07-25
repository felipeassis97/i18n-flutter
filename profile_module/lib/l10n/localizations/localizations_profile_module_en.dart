import 'localizations_profile_module.dart';

/// The translations for English (`en`).
class LocalizationsProfileModuleEn extends LocalizationsProfileModule {
  LocalizationsProfileModuleEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World! Profile module';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get choose => 'Choose a language';
}
