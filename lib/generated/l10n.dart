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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Discover a Unique Shopping Experience with FruitHUB`
  String get title {
    return Intl.message(
      'Discover a Unique Shopping Experience with FruitHUB',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Explore our wide collection of premium fresh fruits and get the best deals with high quality.`
  String get description {
    return Intl.message(
      'Explore our wide collection of premium fresh fruits and get the best deals with high quality.',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Welcome in`
  String get welcome_message {
    return Intl.message(
      'Welcome in',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest carefully selected fruits. Browse details, images, and reviews to ensure you choose the perfect fruit.`
  String get offer {
    return Intl.message(
      'We offer you the finest carefully selected fruits. Browse details, images, and reviews to ensure you choose the perfect fruit.',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop.`
  String get call_to_action {
    return Intl.message(
      'Search and Shop.',
      name: 'call_to_action',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `start now`
  String get start_now {
    return Intl.message(
      'start now',
      name: 'start_now',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `forget password?`
  String get forget_password {
    return Intl.message(
      'forget password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `sign in`
  String get sign_in {
    return Intl.message(
      'sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get donot_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'donot_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `create new account`
  String get create_account {
    return Intl.message(
      'create new account',
      name: 'create_account',
      desc: '',
      args: [],
    );
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
