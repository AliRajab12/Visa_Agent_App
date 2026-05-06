import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visa_agent_app/core/theme/colors.dart';

class visa_agentTheme extends StatefulWidget {
  final Widget Function(BuildContext context, ThemeData themeData) builder;

  const visa_agentTheme({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  visa_agentThemeState createState() => visa_agentThemeState();

  static visa_agentThemeState? of(BuildContext context) {
    return context.findAncestorStateOfType<visa_agentThemeState>();
  }
}

class visa_agentThemeState extends State<visa_agentTheme> {
  ThemeData get defaultTheme => _buildTheme();

  Color brandColor = Colors.white;
  bool brandUseLightText = false;
  String? brandLogoUrl;

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: widget.builder(context, defaultTheme),
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      fontFamily: 'Univers',
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        primaryContainer: Color(0xFFD9E2FF),
        onPrimary: Colors.white,
        onPrimaryContainer: Color(0xFF001945),
        secondary: AppColors.secondary, //Color(0xFF575E71),
        secondaryContainer: Color(0xFFDCE2F9),
        onSecondary: Colors.white,
        error: Color(0xFFBA1A1A),
        onError: Colors.white,
        errorContainer: Color(0xFFFFDAD6),
        onErrorContainer: Color(0xFF410002),
        background: AppColors.background, // Color(0xFFF3F7FF),
        onBackground: Colors.black,
        onSurface: Color(0xFF1B1B1F),
        onSurfaceVariant: Color(0xFF44464F),
        surface: Color(0xFFFBF8FD),
        surfaceTint: Color(0xFFEFEDF1),
        tertiary: Color(0xFF725572),
        onTertiary: Colors.white,
      ),
      navigationBarTheme: NavigationBarThemeData(
        iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
          // Return black icon regardless of state
          (Set<MaterialState> states) =>
              const IconThemeData(color: Colors.black),
        ),
      ),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
      cardTheme: const CardTheme(
        elevation: 0,
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFF3F7FF)),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.grey;
            }
            return Colors.black;
          }),
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
