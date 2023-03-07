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

  /// `Calculate`
  String get btncalcu {
    return Intl.message(
      'Calculate',
      name: 'btncalcu',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get btnadd {
    return Intl.message(
      'Add',
      name: 'btnadd',
      desc: '',
      args: [],
    );
  }

  /// `Add resistance`
  String get btnaddr {
    return Intl.message(
      'Add resistance',
      name: 'btnaddr',
      desc: '',
      args: [],
    );
  }

  /// `Sesion`
  String get labeluser {
    return Intl.message(
      'Sesion',
      name: 'labeluser',
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

  /// ` is: `
  String get isEs {
    return Intl.message(
      ' is: ',
      name: 'isEs',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get andY {
    return Intl.message(
      'and',
      name: 'andY',
      desc: '',
      args: [],
    );
  }

  /// `Quadratic equation`
  String get labelequa {
    return Intl.message(
      'Quadratic equation',
      name: 'labelequa',
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

  /// `Fibonacci`
  String get labelfibona {
    return Intl.message(
      'Fibonacci',
      name: 'labelfibona',
      desc: '',
      args: [],
    );
  }

  /// `Result quadratic equations`
  String get resultequa {
    return Intl.message(
      'Result quadratic equations',
      name: 'resultequa',
      desc: '',
      args: [],
    );
  }

  /// `MCD result`
  String get resultmcd {
    return Intl.message(
      'MCD result',
      name: 'resultmcd',
      desc: '',
      args: [],
    );
  }

  /// `MCM result`
  String get resultmcm {
    return Intl.message(
      'MCM result',
      name: 'resultmcm',
      desc: '',
      args: [],
    );
  }

  /// `Fibonacci result`
  String get resultfibona {
    return Intl.message(
      'Fibonacci result',
      name: 'resultfibona',
      desc: '',
      args: [],
    );
  }

  /// `Parabolic throw distance`
  String get labelparabolic {
    return Intl.message(
      'Parabolic throw distance',
      name: 'labelparabolic',
      desc: '',
      args: [],
    );
  }

  /// `Current intensity`
  String get labelIC {
    return Intl.message(
      'Current intensity',
      name: 'labelIC',
      desc: '',
      args: [],
    );
  }

  /// `Force exerted on a body`
  String get labelforcebody {
    return Intl.message(
      'Force exerted on a body',
      name: 'labelforcebody',
      desc: '',
      args: [],
    );
  }

  /// `Parabolic shot distance result`
  String get resultparaboli {
    return Intl.message(
      'Parabolic shot distance result',
      name: 'resultparaboli',
      desc: '',
      args: [],
    );
  }

  /// `Current intensity result`
  String get resultIC {
    return Intl.message(
      'Current intensity result',
      name: 'resultIC',
      desc: '',
      args: [],
    );
  }

  /// `Result of force exerted on a body`
  String get resultforcebody {
    return Intl.message(
      'Result of force exerted on a body',
      name: 'resultforcebody',
      desc: '',
      args: [],
    );
  }

  /// `The average`
  String get resultaverage {
    return Intl.message(
      'The average',
      name: 'resultaverage',
      desc: '',
      args: [],
    );
  }

  /// `The variance`
  String get resultvariance {
    return Intl.message(
      'The variance',
      name: 'resultvariance',
      desc: '',
      args: [],
    );
  }

  /// `The statistical mode`
  String get resultmode {
    return Intl.message(
      'The statistical mode',
      name: 'resultmode',
      desc: '',
      args: [],
    );
  }

  /// `Entered data`
  String get data {
    return Intl.message(
      'Entered data',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `I accept terms and conditions`
  String get terms {
    return Intl.message(
      'I accept terms and conditions',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Places of interest`
  String get menuopt1 {
    return Intl.message(
      'Places of interest',
      name: 'menuopt1',
      desc: '',
      args: [],
    );
  }

  /// `Characters`
  String get menuopt2 {
    return Intl.message(
      'Characters',
      name: 'menuopt2',
      desc: '',
      args: [],
    );
  }

  /// `Name of the site`
  String get labelnamepla {
    return Intl.message(
      'Name of the site',
      name: 'labelnamepla',
      desc: '',
      args: [],
    );
  }

  /// `Url address`
  String get labeladdres {
    return Intl.message(
      'Url address',
      name: 'labeladdres',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get labelnamepers {
    return Intl.message(
      'Name',
      name: 'labelnamepers',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get labelnanatio {
    return Intl.message(
      'Nationality',
      name: 'labelnanatio',
      desc: '',
      args: [],
    );
  }

  /// `Contribution`
  String get labelcontribu {
    return Intl.message(
      'Contribution',
      name: 'labelcontribu',
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
