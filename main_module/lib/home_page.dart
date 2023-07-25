import 'package:design_system_module/l10n/localizations/localizations_design_system_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localizations_app/l10n/localizations/localizations_main_module.dart';
import 'package:localizations_app/resources/app_assets.dart';
import 'package:localizations_app/resources/locale_selector.dart';
import 'package:profile_module/l10n/localizations/localizations_profile_module.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(LocalizationsMainModule.of(context)!.choose),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => _showDialog(context),
                child: Text(
                  LocalizationsMainModule.of(context)!.choose,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 24),
              Row(children: [
                Text(
                  'main_module: ',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  LocalizationsMainModule.of(context)!.helloWorld,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ]),
              const SizedBox(height: 8),
              Row(children: [
                Text(
                  'profile_module: ',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  LocalizationsProfileModule.of(context)!.helloWorld,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ]),
              const SizedBox(height: 8),
              Row(children: [
                Text(
                  'design_system_module: ',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Flexible(
                  child: Text(
                    LocalizationsDesignSystemModule.of(context)!.helloWorld,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return IntrinsicHeight(
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    changeLocale(const Locale('en'));
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.english, height: 40),
                      const SizedBox(width: 8),
                      Text(
                        LocalizationsMainModule.of(context)!.english,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    changeLocale(const Locale('pt'));
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.portuguese, height: 40),
                      const SizedBox(width: 8),
                      Text(
                        LocalizationsMainModule.of(context)!.portuguese,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    changeLocale(const Locale('es'));
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.spanish, height: 40),
                      const SizedBox(width: 8),
                      Text(
                        LocalizationsMainModule.of(context)!.spanish,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
