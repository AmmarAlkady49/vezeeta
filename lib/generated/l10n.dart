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

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Good morning`
  String get hello {
    return Intl.message('Good morning', name: 'hello', desc: '', args: []);
  }

  /// `Hello, James`
  String get hi_there {
    return Intl.message('Hello, James', name: 'hi_there', desc: '', args: []);
  }

  /// `Search doctor or health issue`
  String get hint_text_search {
    return Intl.message(
      'Search doctor or health issue',
      name: 'hint_text_search',
      desc: '',
      args: [],
    );
  }

  /// `Profile Page`
  String get profile_page {
    return Intl.message(
      'Profile Page',
      name: 'profile_page',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Schedule`
  String get schedule {
    return Intl.message('Schedule', name: 'schedule', desc: '', args: []);
  }

  /// `Chat`
  String get chat {
    return Intl.message('Chat', name: 'chat', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Covid-19`
  String get covid {
    return Intl.message('Covid-19', name: 'covid', desc: '', args: []);
  }

  /// `Doctors`
  String get doctors {
    return Intl.message('Doctors', name: 'doctors', desc: '', args: []);
  }

  /// `Medicine`
  String get medicine {
    return Intl.message('Medicine', name: 'medicine', desc: '', args: []);
  }

  /// `Hospitals`
  String get hospitals {
    return Intl.message('Hospitals', name: 'hospitals', desc: '', args: []);
  }

  /// `Nearby Doctors`
  String get nearby_doctors {
    return Intl.message(
      'Nearby Doctors',
      name: 'nearby_doctors',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `KM`
  String get KM {
    return Intl.message('KM', name: 'KM', desc: '', args: []);
  }

  /// `Reviews`
  String get reviews {
    return Intl.message('Reviews', name: 'reviews', desc: '', args: []);
  }

  /// `Open at`
  String get open_at {
    return Intl.message('Open at', name: 'open_at', desc: '', args: []);
  }

  /// `Dental Specialist`
  String get dental_specialist {
    return Intl.message(
      'Dental Specialist',
      name: 'dental_specialist',
      desc: '',
      args: [],
    );
  }

  /// `General Doctor`
  String get general_doctor {
    return Intl.message(
      'General Doctor',
      name: 'general_doctor',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get AM {
    return Intl.message('AM', name: 'AM', desc: '', args: []);
  }

  /// `PM`
  String get PM {
    return Intl.message('PM', name: 'PM', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
