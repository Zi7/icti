import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icti/shared/shared.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryText,
    Color? secondaryText,
    required Color accentColor,
    Color? divider,
    Color? buttonBackground,
    required Color buttonText,
    Color? cardBackground,
    Color? disabled,
    required Color error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      brightness: brightness,
      buttonColor: buttonBackground,
      canvasColor: background,
      cardColor: background,
      dividerColor: divider,
      dividerTheme: DividerThemeData(
        color: divider,
        space: 1,
        thickness: 1,
      ),
      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      backgroundColor: background,
      primaryColor: accentColor,
      accentColor: accentColor,
      // textSelectionColor: accentColor,
      // textSelectionHandleColor: accentColor,
      // cursorColor: accentColor,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: accentColor,
        selectionHandleColor: accentColor,
        cursorColor: accentColor,
      ),
      toggleableActiveColor: accentColor,
      appBarTheme: AppBarTheme(
        brightness: brightness,
        color: cardBackground,
        textTheme: TextTheme(
          bodyText1: baseTextTheme.bodyText1!.copyWith(
            color: secondaryText,
            fontSize: 18,
          ),
        ),
        iconTheme: IconThemeData(
          color: secondaryText,
        ),
      ),
      iconTheme: IconThemeData(
        color: secondaryText,
        size: 16.0,
      ),
      errorColor: error,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: accentColor,
          primaryVariant: accentColor,
          secondary: accentColor,
          secondaryVariant: accentColor,
          surface: background,
          background: background,
          error: error,
          onPrimary: buttonText,
          onSecondary: buttonText,
          onSurface: buttonText,
          onBackground: buttonText,
          onError: buttonText,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: brightness,
        primaryColor: accentColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(color: error),
        labelStyle: TextStyle(
          // fontFamily: 'NotoSansTC',
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: primaryText.withOpacity(0.5),
        ),
        hintStyle: TextStyle(
          color: secondaryText,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      // fontFamily: 'NotoSansTC',
      unselectedWidgetColor: hexToColor('#DADCDD'),
      textTheme: TextTheme(
        headline1: baseTextTheme.headline1!.copyWith(
          color: primaryText,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          // fontFamily: 'NotoSansTC',
        ),
        headline2: baseTextTheme.headline2!.copyWith(
          color: primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          // fontFamily: 'NotoSansTC',
        ),
        headline3: baseTextTheme.headline3!.copyWith(
          color: secondaryText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          // fontFamily: 'NotoSansTC',
        ),
        headline4: baseTextTheme.headline4!.copyWith(
          color: primaryText,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          // fontFamily: 'NotoSansTC',
        ),
        headline5: baseTextTheme.headline5!.copyWith(
          color: primaryText,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          // fontFamily: 'NotoSansTC',
        ),
        headline6: baseTextTheme.headline6!.copyWith(
          color: primaryText,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          // fontFamily: 'NotoSansTC',
        ),
        bodyText1: baseTextTheme.bodyText1!.copyWith(
          color: secondaryText,
          fontSize: 15,
          // fontFamily: 'NotoSansTC',
        ),
        bodyText2: baseTextTheme.bodyText2!.copyWith(
          color: primaryText,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          // fontFamily: 'NotoSansTC',
        ),
        button: baseTextTheme.button!.copyWith(
          color: primaryText,
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
          // fontFamily: 'NotoSansTC',
        ),
        caption: baseTextTheme.caption!.copyWith(
          color: primaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w300,
          // fontFamily: 'NotoSansTC',
        ),
        overline: baseTextTheme.overline!.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
          // fontFamily: 'NotoSansTC',
        ),
        subtitle1: baseTextTheme.subtitle1!.copyWith(
          color: primaryText,
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          // fontFamily: 'NotoSansTC',
        ),
        subtitle2: baseTextTheme.subtitle2!.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
          // fontFamily: 'NotoSansTC',
        ),
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
        background: Colors.white,
        cardBackground: Colors.black,
        primaryText: Colors.white,
        secondaryText: Colors.black,
        accentColor: Colors.black,
        divider: Colors.black,
        buttonBackground: Colors.black,
        buttonText: Colors.black,
        disabled: Colors.black,
        error: Colors.red,
      );

  static ThemeData get darkTheme => createTheme(
        brightness: Brightness.dark,
        background: Colors.black,
        cardBackground: Colors.white,
        primaryText: Colors.black,
        secondaryText: Colors.white,
        accentColor: Colors.white,
        divider: Colors.white,
        buttonBackground: Colors.white,
        buttonText: Colors.white,
        disabled: Colors.white,
        error: Colors.red,
      );
}
