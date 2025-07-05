import 'package:flutter/material.dart';

class AnimatedGradientContainer extends StatelessWidget {
  final LinearGradient gradient;
  final Widget child;
  final Duration duration;

  const AnimatedGradientContainer({
    super.key,
    required this.gradient,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<LinearGradient>(
      tween: GradientTween(begin: gradient, end: gradient),
      duration: duration,
      builder: (context, LinearGradient? value, _) {
        return Container(
          decoration: BoxDecoration(
            gradient: value,
          ),
          child: child,
        );
      },
    );
  }
}
class GradientTween extends Tween<LinearGradient> {
  GradientTween({LinearGradient? begin, LinearGradient? end})
      : super(begin: begin, end: end);

  @override
  LinearGradient lerp(double t) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: List.generate(begin!.colors.length, (index) {
        return Color.lerp(begin!.colors[index], end!.colors[index], t)!;
      }),
    );
  }
}
