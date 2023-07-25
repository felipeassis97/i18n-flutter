import 'localizations_main_module.dart';

/// The translations for English (`en`).
class LocalizationsMainModuleEn extends LocalizationsMainModule {
  LocalizationsMainModuleEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World! Main module';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get choose => 'Choose a language';
}
