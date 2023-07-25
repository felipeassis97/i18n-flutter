import 'localizations_profile_module.dart';

/// The translations for Portuguese (`pt`).
class LocalizationsProfileModulePt extends LocalizationsProfileModule {
  LocalizationsProfileModulePt([String locale = 'pt']) : super(locale);

  @override
  String get helloWorld => 'Olá Mundo Profile module';

  @override
  String get english => 'Ingles';

  @override
  String get spanish => 'Espanhol';

  @override
  String get portuguese => 'Portugues';

  @override
  String get choose => 'Escolha um idioma';
}
