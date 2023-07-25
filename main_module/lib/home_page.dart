import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localizations_app/resources/app_assets.dart';
import 'package:localizations_app/resources/locale_selector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(AppLocalizations.of(context)?.helloWorld ?? 'test'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => _showDialog(context),
              child: Text(
                AppLocalizations.of(context)?.choose ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
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
                        AppLocalizations.of(context)?.english ?? '',
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
                        AppLocalizations.of(context)?.portuguese ?? '',
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
                        AppLocalizations.of(context)?.spanish ?? '',
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
