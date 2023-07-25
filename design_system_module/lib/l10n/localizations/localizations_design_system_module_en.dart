import 'localizations_design_system_module.dart';

/// The translations for English (`en`).
class LocalizationsDesignSystemModuleEn extends LocalizationsDesignSystemModule {
  LocalizationsDesignSystemModuleEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World! Design module';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get choose => 'Choose a language';
}
