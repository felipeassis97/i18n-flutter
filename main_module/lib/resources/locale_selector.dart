import 'dart:async';
import 'package:flutter/material.dart';

final _localeController = StreamController<Locale>();
Locale _currentLocale = const Locale('en');

Stream<Locale> get localeStream => _localeController.stream;
Locale get currentLocale => _currentLocale;

void changeLocale(Locale newLocale) {
  _currentLocale = newLocale;
  _localeController.sink.add(newLocale);
}

void dispose() {
  _localeController.close();
}
