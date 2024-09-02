import 'package:educacao_criativa/widgets/custom_chip/chip_model.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  final ChipModel model;
  const CustomChip({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    Color background = PaletteColors.primary;
    Color textColor = Colors.white;

    switch (model.type) {
      case 'yellow':
        background = Colors.yellow.withOpacity(0.3);
        textColor = Colors.yellow[900]!;
        break;
      case 'orange':
        background = Colors.orange.withOpacity(0.3);
        textColor = Colors.orange[900]!;
        break;

      case 'green':
        background = Colors.green.withOpacity(0.3);
        textColor = Colors.green[900]!;
        break;
      case 'blue':
        background = Colors.blue.withOpacity(0.3);
        textColor = Colors.blue[900]!;
        break;

      case 'red':
        background = Colors.red.withOpacity(0.3);
        textColor = Colors.red;
        break;
      default:
        background = PaletteColors.primary;
        textColor = Colors.white;

        break;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: background,
        border: Border.all(
          color: const Color.fromRGBO(59, 71, 82, 0.2), // Cor da borda
          width: 1.0, // Largura da borda
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: Text(
        model.title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 10.5,
          letterSpacing: 0.06,
          color: textColor,
        ),
      ),
    );
  }
}
