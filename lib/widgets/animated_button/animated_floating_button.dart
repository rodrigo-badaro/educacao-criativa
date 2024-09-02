import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedFloatingButton extends StatefulWidget {
  final AnimatedButtonCubit cubit;
  final Icon icon;
  final Function()? function;
  final double height;
  final double fontSize;
  final Color color;

  GlobalKey<FormState>? formKey = GlobalKey<FormState>();

  AnimatedFloatingButton({
    super.key,
    required this.cubit,
    required this.icon,
    this.function,
    this.formKey,
    this.height = 32,
    this.fontSize = 16,
    this.color = PaletteColors.primary,
  });

  @override
  State<AnimatedFloatingButton> createState() => _AnimatedFloatingButtonState();
}

class _AnimatedFloatingButtonState extends State<AnimatedFloatingButton> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> borderRadiusAnimation;

  late final Animation<double> textAnimation;
  late final Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    borderRadiusAnimation = Tween<double>(
      begin: 16.0,
      end: 50.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
        reverseCurve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    textAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 1),
      ),
    );
    progressAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 1),
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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: widget.function == null ? widget.color.withOpacity(0.5) : widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusAnimation.value),
      ),
      onPressed: controller.isAnimating
          ? null
          : widget.function == null
              ? null
              : () {
                  if (widget.formKey == null) {
                    widget.function!.call();
                  } else {
                    if (widget.formKey!.currentState!.validate() && widget.function != null) widget.function!.call();
                  }
                },
      child: Stack(
        children: [
          Opacity(
            opacity: textAnimation.value,
            child: Center(
              child: widget.icon,
            ),
          ),
          Opacity(
            opacity: progressAnimation.value,
            child: const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 3.0,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
