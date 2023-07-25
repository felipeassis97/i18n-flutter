import 'localizations_profile_module.dart';

/// The translations for Spanish Castilian (`es`).
class LocalizationsProfileModuleEs extends LocalizationsProfileModule {
  LocalizationsProfileModuleEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo! Profile module';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get portuguese => 'Portugués';

  @override
  String get choose => 'Elige un idioma';
}
