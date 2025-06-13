import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a43),
      surfaceTint: Color(0xff904a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad5),
      onPrimaryContainer: Color(0xff73342d),
      secondary: Color(0xff5a5892),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe2dfff),
      onSecondaryContainer: Color(0xff424078),
      tertiary: Color(0xff34693f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb6f1bb),
      onTertiaryContainer: Color(0xff1a512a),
      error: Color(0xff8c4a60),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffd9e2),
      onErrorContainer: Color(0xff703348),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534341),
      outline: Color(0xff857371),
      outlineVariant: Color(0xffd8c2bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2d),
      inversePrimary: Color(0xffffb4ab),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0907),
      primaryFixedDim: Color(0xffffb4ab),
      onPrimaryFixedVariant: Color(0xff73342d),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff16134a),
      secondaryFixedDim: Color(0xffc3c0ff),
      onSecondaryFixedVariant: Color(0xff424078),
      tertiaryFixed: Color(0xffb6f1bb),
      onTertiaryFixed: Color(0xff00210a),
      tertiaryFixedDim: Color(0xff9ad4a1),
      onTertiaryFixedVariant: Color(0xff1a512a),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedc),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e231e),
      surfaceTint: Color(0xff904a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa25850),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff313066),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6967a1),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff043f1a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff43784d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5b2238),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff9d586f),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff180f0e),
      onSurfaceVariant: Color(0xff413331),
      outline: Color(0xff5f4f4d),
      outlineVariant: Color(0xff7b6967),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2d),
      inversePrimary: Color(0xffffb4ab),
      primaryFixed: Color(0xffa25850),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff84413a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6967a1),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff504f87),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff43784d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2a5f36),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3c0),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfff6e4e2),
      surfaceContainerHigh: Color(0xffebd9d6),
      surfaceContainerHighest: Color(0xffdfcecb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff511a15),
      surfaceTint: Color(0xff904a43),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff76362f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff27255b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff44437b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003413),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1d532c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4f182e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff72354b),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362927),
      outlineVariant: Color(0xff554544),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2d),
      inversePrimary: Color(0xffffb4ab),
      primaryFixed: Color(0xff76362f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff59201b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff44437b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2e2c62),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1d532c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003c17),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedea),
      surfaceContainer: Color(0xfff1dedc),
      surfaceContainerHigh: Color(0xffe2d0ce),
      surfaceContainerHighest: Color(0xffd4c3c0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4ab),
      surfaceTint: Color(0xffffb4ab),
      onPrimary: Color(0xff561e19),
      primaryContainer: Color(0xff73342d),
      onPrimaryContainer: Color(0xffffdad5),
      secondary: Color(0xffc3c0ff),
      onSecondary: Color(0xff2b2a60),
      secondaryContainer: Color(0xff424078),
      onSecondaryContainer: Color(0xffe2dfff),
      tertiary: Color(0xff9ad4a1),
      onTertiary: Color(0xff003916),
      tertiaryContainer: Color(0xff1a512a),
      onTertiaryContainer: Color(0xffb6f1bb),
      error: Color(0xffffb1c8),
      onError: Color(0xff541d32),
      errorContainer: Color(0xff703348),
      onErrorContainer: Color(0xffffd9e2),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dedc),
      onSurfaceVariant: Color(0xffd8c2bf),
      outline: Color(0xffa08c8a),
      outlineVariant: Color(0xff534341),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff904a43),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0907),
      primaryFixedDim: Color(0xffffb4ab),
      onPrimaryFixedVariant: Color(0xff73342d),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff16134a),
      secondaryFixedDim: Color(0xffc3c0ff),
      onSecondaryFixedVariant: Color(0xff424078),
      tertiaryFixed: Color(0xffb6f1bb),
      onTertiaryFixed: Color(0xff00210a),
      tertiaryFixedDim: Color(0xff9ad4a1),
      onTertiaryFixedVariant: Color(0xff1a512a),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2cc),
      surfaceTint: Color(0xffffb4ab),
      onPrimary: Color(0xff48130f),
      primaryContainer: Color(0xffcc7b72),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffdbd8ff),
      onSecondary: Color(0xff201e55),
      secondaryContainer: Color(0xff8d8bc8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb0ebb5),
      onTertiary: Color(0xff002d10),
      tertiaryContainer: Color(0xff669d6e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd0dc),
      onError: Color(0xff471227),
      errorContainer: Color(0xffc67b92),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed7d4),
      outline: Color(0xffc2adaa),
      outlineVariant: Color(0xffa08c89),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff74352e),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff2c0101),
      primaryFixedDim: Color(0xffffb4ab),
      onPrimaryFixedVariant: Color(0xff5e231e),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff0a0640),
      secondaryFixedDim: Color(0xffc3c0ff),
      onSecondaryFixedVariant: Color(0xff313066),
      tertiaryFixed: Color(0xffb6f1bb),
      onTertiaryFixed: Color(0xff001505),
      tertiaryFixedDim: Color(0xff9ad4a1),
      onTertiaryFixedVariant: Color(0xff043f1a),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff4d4240),
      surfaceContainerLowest: Color(0xff0d0605),
      surfaceContainerLow: Color(0xff251b1a),
      surfaceContainer: Color(0xff302524),
      surfaceContainerHigh: Color(0xff3b302f),
      surfaceContainerHighest: Color(0xff463b3a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece9),
      surfaceTint: Color(0xffffb4ab),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaea4),
      onPrimaryContainer: Color(0xff220000),
      secondary: Color(0xfff1eeff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbfbcfd),
      onSecondaryContainer: Color(0xff05003a),
      tertiary: Color(0xffc3ffc8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff97d09d),
      onTertiaryContainer: Color(0xff000f03),
      error: Color(0xffffebef),
      onError: Color(0xff000000),
      errorContainer: Color(0xfffeabc4),
      onErrorContainer: Color(0xff20000c),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece9),
      outlineVariant: Color(0xffd4bebb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff74352e),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4ab),
      onPrimaryFixedVariant: Color(0xff2c0101),
      secondaryFixed: Color(0xffe2dfff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc3c0ff),
      onSecondaryFixedVariant: Color(0xff0a0640),
      tertiaryFixed: Color(0xffb6f1bb),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff9ad4a1),
      onTertiaryFixedVariant: Color(0xff001505),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff5a4d4c),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271d1c),
      surfaceContainer: Color(0xff392e2d),
      surfaceContainerHigh: Color(0xff443937),
      surfaceContainerHighest: Color(0xff504443),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
