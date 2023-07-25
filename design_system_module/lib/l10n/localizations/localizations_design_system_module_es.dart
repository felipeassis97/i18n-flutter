import 'localizations_design_system_module.dart';

/// The translations for Spanish Castilian (`es`).
class LocalizationsDesignSystemModuleEs extends LocalizationsDesignSystemModule {
  LocalizationsDesignSystemModuleEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo! Design module';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get portuguese => 'Portugués';

  @override
  String get choose => 'Elige un idioma';
}
