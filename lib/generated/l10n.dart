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

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `sign in with google`
  String get google {
    return Intl.message(
      'sign in with google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `sign in with apple`
  String get apple {
    return Intl.message(
      'sign in with apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `sign in with facebook`
  String get facebook {
    return Intl.message(
      'sign in with facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `new account`
  String get new_account {
    return Intl.message(
      'new account',
      name: 'new_account',
      desc: '',
      args: [],
    );
  }

  /// `full name`
  String get full_name {
    return Intl.message(
      'full name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `create new account`
  String get create_new_account {
    return Intl.message(
      'create new account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `have an account?`
  String get have_account {
    return Intl.message(
      'have an account?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get terms {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'conditions',
      desc: '',
      args: [],
    );
  }

  /// `Please enter some text`
  String get enater_value {
    return Intl.message(
      'Please enter some text',
      name: 'enater_value',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get weak_password {
    return Intl.message(
      'Weak password',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use`
  String get email_already_in_use {
    return Intl.message(
      'Email already in use',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get an_error_occurred {
    return Intl.message(
      'An error occurred',
      name: 'an_error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Sign in successfully`
  String get sign_in_successfully {
    return Intl.message(
      'Sign in successfully',
      name: 'sign_in_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please Accept our Terms and conditions`
  String get terms_and_condiotions {
    return Intl.message(
      'Please Accept our Terms and conditions',
      name: 'terms_and_condiotions',
      desc: '',
      args: [],
    );
  }

  /// `make sure you are connected to the internet`
  String get internet_con {
    return Intl.message(
      'make sure you are connected to the internet',
      name: 'internet_con',
      desc: '',
      args: [],
    );
  }

  /// `user not found`
  String get user_not_found {
    return Intl.message(
      'user not found',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `email or password is incorrect`
  String get email_or_password {
    return Intl.message(
      'email or password is incorrect',
      name: 'email_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning`
  String get morning {
    return Intl.message(
      'Good Morning',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `Search for`
  String get search {
    return Intl.message(
      'Search for',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Eid Offer`
  String get eid_offer {
    return Intl.message(
      'Eid Offer',
      name: 'eid_offer',
      desc: '',
      args: [],
    );
  }

  /// `25% Off`
  String get offer_25 {
    return Intl.message(
      '25% Off',
      name: 'offer_25',
      desc: '',
      args: [],
    );
  }

  /// `Shop now`
  String get shop_now {
    return Intl.message(
      'Shop now',
      name: 'shop_now',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get best_selling {
    return Intl.message(
      'Best Selling',
      name: 'best_selling',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get shopping_cart {
    return Intl.message(
      'Shopping Cart',
      name: 'shopping_cart',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get my_account {
    return Intl.message(
      'My Account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get results {
    return Intl.message(
      'Results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `You have`
  String get you_have {
    return Intl.message(
      'You have',
      name: 'you_have',
      desc: '',
      args: [],
    );
  }

  /// `items in your cart`
  String get items {
    return Intl.message(
      'items in your cart',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get add_to_cart {
    return Intl.message(
      'Add to cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Product Details`
  String get product_details {
    return Intl.message(
      'Product Details',
      name: 'product_details',
      desc: '',
      args: [],
    );
  }

  /// `pound`
  String get pound {
    return Intl.message(
      'pound',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kg {
    return Intl.message(
      'kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `Added to cart`
  String get added_to_cart {
    return Intl.message(
      'Added to cart',
      name: 'added_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Removed from cart`
  String get removed_from_cart {
    return Intl.message(
      'Removed from cart',
      name: 'removed_from_cart',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Continue Shopping`
  String get continue_shopping {
    return Intl.message(
      'Continue Shopping',
      name: 'continue_shopping',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
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
