import 'localizations_main_module.dart';

/// The translations for Spanish Castilian (`es`).
class LocalizationsMainModuleEs extends LocalizationsMainModule {
  LocalizationsMainModuleEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo! Main module';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get portuguese => 'Portugués';

  @override
  String get choose => 'Elige un idioma';
}
