import 'package:auto_size_text/auto_size_text.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//  String api = 'https://jytjs7ht8a.execute-api.sa-east-1.amazonaws.com/dev';
String api = 'http://localhost:3000';
String googleMapsApiKey = 'AIzaSyCBBTRArynOTE5ooRe9iEuwFjkSgxfhGJk';
int sm = 992; // mobile
int lg = 1192; // desktop
int xl = 1500; // desktop
const Color primaryColor = Color(0xFF0F172A); //
const Color titleColor = Color(0xFF1E293B);
const Color bodyTextColor = Color(0xFF64748B);
const Color mainColor = Color(0xFF5249E3);
const Color bgColor = Color(0xFFF1F5F9);

double menuColapsedTrue = 70;
double menuColapsedFalse = 270;

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class BodyText extends StatelessWidget {
  final String text;
  const BodyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 12,
      maxFontSize: 14,
      style: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: bodyTextColor,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: 3,
      minFontSize: 12,
      maxFontSize: 16,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: titleColor,
      ),
    );
  }
}

class H1Text extends StatelessWidget {
  final String text;
  const H1Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: 1,
      minFontSize: 12,
      maxFontSize: 46,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 46,
        fontWeight: FontWeight.w700,
        color: titleColor,
      ),
    );
  }
}

final ThemeData theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: PaletteColors.background,
  iconTheme: const IconThemeData(
    color: PaletteColors.info,
    size: 22,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
      side: const BorderSide(
        color: Color.fromRGBO(15, 23, 42, 0.2),
        width: 1,
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: WidgetStateProperty.resolveWith<double?>((Set<WidgetState> states) => 0),
      textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (Set<WidgetState> states) => GoogleFonts.poppins(
          fontSize: 13.5,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      backgroundColor: const WidgetStatePropertyAll(PaletteColors.menu),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
        (Set<WidgetState> states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey[300],
    thickness: 1,
  ),
  chipTheme: const ChipThemeData(
    selectedColor: PaletteColors.primary,
    backgroundColor: PaletteColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
    ),
    side: BorderSide(color: Color.fromRGBO(59, 71, 82, 0.2), width: 1.0),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(color: Color.fromRGBO(15, 23, 42, 0.3), width: 1.0),
    fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return PaletteColors.primary;
      }
      return PaletteColors.background;
    }),
  ),
  switchTheme: SwitchThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    trackOutlineWidth: const WidgetStatePropertyAll(0),
    thumbIcon: WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return const Icon(
          Icons.remove,
        );
      }
      if (states.contains(WidgetState.selected)) {
        return const Icon(
          Icons.check,
          color: PaletteColors.primary,
        );
      }
      return const Icon(
        Icons.close,
        color: PaletteColors.primary,
      );
    }),
    thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      return Colors.white;
    }),
    trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey;
      }

      if (states.contains(WidgetState.selected)) {
        return PaletteColors.primary;
      }

      return const Color.fromRGBO(82, 73, 227, 0.5);
    }),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF5249E3),
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(fontWeight: FontWeight.w400), //<-- SEE HERE
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    filled: true,
    fillColor: Colors.white,
    iconColor: PaletteColors.menu,
    prefixIconColor: PaletteColors.menu,
    floatingLabelStyle: const TextStyle(color: PaletteColors.menu),
    contentPadding: const EdgeInsets.all(10),
    helperStyle: GoogleFonts.roboto(
      fontSize: 13.5,
      fontWeight: FontWeight.w400,
      color: PaletteColors.menu,
    ),
    disabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: Color.fromRGBO(15, 23, 42, 0.3),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: Color.fromRGBO(15, 23, 42, 0.3),
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(3)),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: Colors.red,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      borderSide: BorderSide(color: Color.fromRGBO(15, 23, 42, 0.5)),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(primary: PaletteColors.primary).copyWith(
        // primarySwatch:  MaterialColor(
        //   0xFF90caf9,
        //   <int, Color>{
        //     50: Color(0xFFe3f2fd),
        //     100: Color(0xFFbbdefb),
        //     200: Color(0xFF90caf9),
        //     300: Color(0xFF64b5f6),
        //     400: Color(0xFF42a5f5),
        //     500: Color(0xFF2196f3),
        //     600: Color(0xFF5249E3),
        //     700: Color(0xFF1976d2),
        //     800: Color(0xFF1565c0),
        //     900: Color(0xFF0d47a1),
        //   },
        // ),
        surface: PaletteColors.background,
      ),
);
