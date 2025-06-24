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

  /// `Sign in to continue`
  String get authLoginTitle {
    return Intl.message(
      'Sign in to continue',
      name: 'authLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get authLoginEmail {
    return Intl.message('Email', name: 'authLoginEmail', desc: '', args: []);
  }

  /// `Password`
  String get authLoginPassword {
    return Intl.message(
      'Password',
      name: 'authLoginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get authLoginRememberMe {
    return Intl.message(
      'Remember me',
      name: 'authLoginRememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get authLoginForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'authLoginForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get authLoginButton {
    return Intl.message('Login', name: 'authLoginButton', desc: '', args: []);
  }

  /// `Or`
  String get authLoginOr {
    return Intl.message('Or', name: 'authLoginOr', desc: '', args: []);
  }

  /// `Continue with Google`
  String get authLoginContinueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'authLoginContinueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get authLoginNoAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'authLoginNoAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get authLoginSignUp {
    return Intl.message('Sign up', name: 'authLoginSignUp', desc: '', args: []);
  }

  /// `Account created successfully!`
  String get authSignupSuccessMessage {
    return Intl.message(
      'Account created successfully!',
      name: 'authSignupSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a name`
  String get authValidationEnterName {
    return Intl.message(
      'Please enter a name',
      name: 'authValidationEnterName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email`
  String get authValidationEnterEmail {
    return Intl.message(
      'Please enter an email',
      name: 'authValidationEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a password`
  String get authValidationEnterPassword {
    return Intl.message(
      'Please enter a password',
      name: 'authValidationEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a confirm password`
  String get authValidationEnterConfirmPassword {
    return Intl.message(
      'Please enter a confirm password',
      name: 'authValidationEnterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password not match`
  String get authValidationPasswordNotMatch {
    return Intl.message(
      'Password not match',
      name: 'authValidationPasswordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get authValidationPasswordLength {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'authValidationPasswordLength',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get authSignupTitle {
    return Intl.message(
      'Create a new account',
      name: 'authSignupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get authSignupUsername {
    return Intl.message(
      'Username',
      name: 'authSignupUsername',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get authSignupEmail {
    return Intl.message('Email', name: 'authSignupEmail', desc: '', args: []);
  }

  /// `Password`
  String get authSignupPassword {
    return Intl.message(
      'Password',
      name: 'authSignupPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get authSignupConfirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'authSignupConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get authSignupButton {
    return Intl.message(
      'Sign up',
      name: 'authSignupButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get authSignupAlreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'authSignupAlreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get authSignupLogin {
    return Intl.message('Login', name: 'authSignupLogin', desc: '', args: []);
  }

  /// `Welcome`
  String get homeWelcome {
    return Intl.message('Welcome', name: 'homeWelcome', desc: '', args: []);
  }

  /// `Search here...`
  String get homeSearchPlaceholder {
    return Intl.message(
      'Search here...',
      name: 'homeSearchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get homeSkip {
    return Intl.message('SKIP', name: 'homeSkip', desc: '', args: []);
  }

  /// `THE DIGITAL HUSTLE`
  String get homeTheDigitalHustle {
    return Intl.message(
      'THE DIGITAL HUSTLE',
      name: 'homeTheDigitalHustle',
      desc: '',
      args: [],
    );
  }

  /// `AND FLY`
  String get homeAndFly {
    return Intl.message('AND FLY', name: 'homeAndFly', desc: '', args: []);
  }

  /// `Best seller`
  String get homeBestSeller {
    return Intl.message(
      'Best seller',
      name: 'homeBestSeller',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get homeViewAll {
    return Intl.message('View all', name: 'homeViewAll', desc: '', args: []);
  }

  /// `Text Editor`
  String get editorTitle {
    return Intl.message('Text Editor', name: 'editorTitle', desc: '', args: []);
  }

  /// `Introduce yourself`
  String get editorIntroduceYourSelf {
    return Intl.message(
      'Introduce yourself',
      name: 'editorIntroduceYourSelf',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.`
  String get placeholderEditorfield {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      name: 'placeholderEditorfield',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get settingsTitle {
    return Intl.message('Setting', name: 'settingsTitle', desc: '', args: []);
  }

  /// `Profile`
  String get settingsProfile {
    return Intl.message('Profile', name: 'settingsProfile', desc: '', args: []);
  }

  /// `Languages`
  String get settingsLanguages {
    return Intl.message(
      'Languages',
      name: 'settingsLanguages',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get settingsAboutUs {
    return Intl.message(
      'About us',
      name: 'settingsAboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Call us`
  String get settingsCallUs {
    return Intl.message('Call us', name: 'settingsCallUs', desc: '', args: []);
  }

  /// `Sign out`
  String get settingsSignOut {
    return Intl.message(
      'Sign out',
      name: 'settingsSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get settingsCallUsBanner {
    return Intl.message(
      'Contact us',
      name: 'settingsCallUsBanner',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get Languageoption {
    return Intl.message('English', name: 'Languageoption', desc: '', args: []);
  }

  /// `Edit Account`
  String get accountTitle {
    return Intl.message(
      'Edit Account',
      name: 'accountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get accountEmail {
    return Intl.message('Email', name: 'accountEmail', desc: '', args: []);
  }

  /// `First name`
  String get accountFirstName {
    return Intl.message(
      'First name',
      name: 'accountFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get accountLastName {
    return Intl.message(
      'Last name',
      name: 'accountLastName',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get accountSave {
    return Intl.message('Save', name: 'accountSave', desc: '', args: []);
  }

  /// `Invalid email or password.`
  String get authLoginInvalid {
    return Intl.message(
      'Invalid email or password.',
      name: 'authLoginInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link sent to your email`
  String get authLoginForgotPasswordSent {
    return Intl.message(
      'Password reset link sent to your email',
      name: 'authLoginForgotPasswordSent',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homebar {
    return Intl.message('Home', name: 'homebar', desc: '', args: []);
  }

  /// `Text Editor`
  String get texteditorbar {
    return Intl.message(
      'Text Editor',
      name: 'texteditorbar',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get settingbar {
    return Intl.message('Setting', name: 'settingbar', desc: '', args: []);
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
