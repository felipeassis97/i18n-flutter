import 'localizations_main_module.dart';

/// The translations for Portuguese (`pt`).
class LocalizationsMainModulePt extends LocalizationsMainModule {
  LocalizationsMainModulePt([String locale = 'pt']) : super(locale);

  @override
  String get helloWorld => 'Olá Mundo Main module';

  @override
  String get english => 'Ingles';

  @override
  String get spanish => 'Espanhol';

  @override
  String get portuguese => 'Portugues';

  @override
  String get choose => 'Escolha um idioma';
}
