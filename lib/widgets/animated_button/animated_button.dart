import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedButton extends StatefulWidget {
  final AnimatedButtonCubit cubit;
  final String title;
  final double width;
  final Function()? function;
  final double height;
  final double fontSize;
  final Color color;

  GlobalKey<FormState>? formKey = GlobalKey<FormState>();

  AnimatedButton({
    super.key,
    required this.cubit,
    required this.title,
    required this.width,
    this.function,
    this.formKey,
    this.height = 32,
    this.fontSize = 16,
    this.color = PaletteColors.info,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> sizeAnimation;
  late final Animation<double> borderRadiusAnimation;

  late final Animation<double> textAnimation;
  late final Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    sizeAnimation = Tween<double>(
      begin: widget.width,
      end: 80,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
        reverseCurve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    borderRadiusAnimation = Tween<double>(
      begin: 3.0,
      end: 50.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
        reverseCurve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    textAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.2),
      ),
    );
    progressAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.4, 1),
      ),
    );

    controller.addListener(() {
      setState(() {});
    });

    widget.cubit.stream.listen((event) {
      if (mounted) {
        if (widget.cubit.state) {
          controller.forward();
        } else {
          try {
            controller.reverse();
          } catch (e) {
            null;
          }
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // widget.cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: sizeAnimation.value,
        height: widget.height,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: widget.function == null
                ? WidgetStatePropertyAll(widget.color.withOpacity(0.5))
                : WidgetStatePropertyAll(widget.color),
            shape: WidgetStateProperty.resolveWith<OutlinedBorder?>(
              (Set<WidgetState> states) => RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(borderRadiusAnimation.value),
              ),
            ),
          ),
          onPressed: controller.isAnimating
              ? null
              : widget.function == null
                  ? null
                  : () {
                      if (widget.formKey == null) {
                        widget.function!.call();
                      } else {
                        if (widget.formKey!.currentState!.validate() &&
                            widget.function != null) widget.function!.call();
                      }
                    },
          child: Stack(
            children: [
              Opacity(
                opacity: textAnimation.value,
                child: Center(
                  child: Paragraph(
                    widget.title,
                    color: PaletteColors.white,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Opacity(
                opacity: progressAnimation.value,
                child: const Center(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 3.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
