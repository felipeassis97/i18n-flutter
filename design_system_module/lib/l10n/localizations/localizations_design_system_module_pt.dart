import 'localizations_design_system_module.dart';

/// The translations for Portuguese (`pt`).
class LocalizationsDesignSystemModulePt extends LocalizationsDesignSystemModule {
  LocalizationsDesignSystemModulePt([String locale = 'pt']) : super(locale);

  @override
  String get helloWorld => 'Olá Mundo Design module';

  @override
  String get english => 'Ingles';

  @override
  String get spanish => 'Espanhol';

  @override
  String get portuguese => 'Portugues';

  @override
  String get choose => 'Escolha um idioma';
}
