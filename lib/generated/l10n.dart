// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Math`
  String get mat1 {
    return Intl.message(
      'Math',
      name: 'mat1',
      desc: '',
      args: [],
    );
  }

  /// `Physical`
  String get mat2 {
    return Intl.message(
      'Physical',
      name: 'mat2',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get mat3 {
    return Intl.message(
      'Statistics',
      name: 'mat3',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get inicio {
    return Intl.message(
      'Home',
      name: 'inicio',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get btnlogin {
    return Intl.message(
      'Log in',
      name: 'btnlogin',
      desc: '',
      args: [],
    );
  }

  /// `Successful session`
  String get menslogin {
    return Intl.message(
      'Successful session',
      name: 'menslogin',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get mensoption {
    return Intl.message(
      'Options',
      name: 'mensoption',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get inputpass {
    return Intl.message(
      'Password',
      name: 'inputpass',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get inputuser {
    return Intl.message(
      'Email',
      name: 'inputuser',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get btncalcu {
    return Intl.message(
      'Calculate',
      name: 'btncalcu',
      desc: '',
      args: [],
    );
  }

  /// `MCD and MCM`
  String get labelmcdandmcm {
    return Intl.message(
      'MCD and MCM',
      name: 'labelmcdandmcm',
      desc: '',
      args: [],
    );
  }

  /// `Quadratic equation`
  String get labelecu {
    return Intl.message(
      'Quadratic equation',
      name: 'labelecu',
      desc: '',
      args: [],
    );
  }

  /// `Fibonacci`
  String get labelfibona {
    return Intl.message(
      'Fibonacci',
      name: 'labelfibona',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
