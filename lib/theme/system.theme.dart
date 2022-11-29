import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class SystemTheme {
  static ThemeData themeData(bool isDarkTheme) {
    return ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Palette().primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor:
            isDarkTheme ? Palette().appColorDark : Palette().appColorLight,
        textTheme: GoogleFonts.openSansTextTheme(),
        primaryTextTheme: TextTheme(
          bodyText1: GoogleFonts.openSans(
              textStyle: TextStyle(
                  fontSize: Insets().appFontSize,
                  fontWeight: FontWeight.w300,
                  color: isDarkTheme
                      ? Palette().appColorLight
                      : Palette().appColorDark)),
          bodyText2: GoogleFonts.questrial(
              textStyle: TextStyle(
                  fontSize: Insets().appFontSize,
                  fontWeight: FontWeight.w300,
                  color: isDarkTheme
                      ? Palette().appColorLight
                      : Palette().appColorDark)),
          button: GoogleFonts.questrial(
              textStyle: TextStyle(
                  fontSize: Insets().appFontSize,
                  fontWeight: FontWeight.w300,
                  color: isDarkTheme
                      ? Palette().appColorLight
                      : Palette().appColorDark)),
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Insets().appRadius),
          ),
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Palette().primaryColor;
                } else if (states.contains(MaterialState.disabled)) {
                  return Colors.grey[100]!;
                }

                return Palette().primaryColor;
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white;
                } else if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }

                return Colors.white;
              },
            ),
            textStyle: MaterialStateProperty.all(const TextStyle(
              fontWeight: FontWeight.w500,
            )),
            // padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            //   horizontal: Insets().appPadding,
            //   vertical: 15,
            // )),
            elevation: MaterialStateProperty.all(0.3),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                // Change your radius here
                borderRadius: BorderRadius.circular(Insets().appRadiusMid),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(isDarkTheme
              ? Palette().primaryColor.withOpacity(0.3)
              : Colors.transparent),
          foregroundColor: MaterialStateProperty.all(
              isDarkTheme ? Palette().appColorLight : Palette().primaryColor),
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontWeight: FontWeight.w400,
          )),
          // padding: MaterialStateProperty.all(EdgeInsets.symmetric(
          //   horizontal: Insets().appPadding,
          //   vertical: 15,
          // )),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              // Change your radius here
              borderRadius: BorderRadius.circular(Insets().appRadiusMid),
            ),
          ),
        )),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(
              isDarkTheme ? Palette().appColorLight : Palette().appColorDark),
          shadowColor: MaterialStateProperty.all(Colors.red),
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontWeight: FontWeight.w400,
          )),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: Insets().appPadding,
            vertical: 15,
          )),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              // Change your radius here
              borderRadius: BorderRadius.circular(Insets().appRadiusMid),
            ),
          ),
        )),
        scrollbarTheme: ScrollbarThemeData(
          radius: Radius.circular(Insets().appRadius),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
              fontSize: Insets().appFontSize,
              color: isDarkTheme
                  ? Palette().appColorLight
                  : Palette().appColorDark),
          hintStyle: TextStyle(
            fontSize: Insets().appFontSize,
            fontStyle: FontStyle.normal,
            color: isDarkTheme ? Palette().appColorLight : Colors.grey,
          ),
          errorStyle: TextStyle(
            fontSize: Insets().appFontSize,
            fontStyle: FontStyle.normal,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          // isDense: true,
          contentPadding: EdgeInsets.fromLTRB(
              Insets().appPadding, 5, Insets().appPadding, 5),

          // contentPadding: const EdgeInsets.symmetric(horizontal: appPadding),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(Insets().appRadiusMid),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Insets().appRadiusMid),
            ),
            borderSide: BorderSide(color: Palette().primaryColor, width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Insets().appRadiusMid),
            ),
            borderSide: const BorderSide(color: Colors.red, width: 1.0),
          ),
        ),
        sliderTheme: const SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ));
  }
}
