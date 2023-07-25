import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localizations_app/home_page.dart';
import 'package:localizations_app/resources/locale_selector.dart';

import 'package:profile_module/l10n/localizations/localizations_profile_module.dart';
import 'package:design_system_module/l10n/localizations/localizations_design_system_module.dart';
import 'l10n/localizations/localizations_main_module.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Locale>(
        stream: localeStream,
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            localizationsDelegates: const [
              LocalizationsMainModule.delegate,
              LocalizationsDesignSystemModule.delegate,
              LocalizationsProfileModule.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('pt'),
              Locale('es'),
            ],
            locale: snapshot.data,
            home: const MyHomePage(),
          );
        });
  }
}
