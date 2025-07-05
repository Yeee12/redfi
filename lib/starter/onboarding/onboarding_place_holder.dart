import 'package:flutter/material.dart';
import 'package:redfi/starter/onboarding/onboarding_model.dart';

class OnboardingPlaceHolder extends StatelessWidget {
  final OnboardingPageData data;

  const OnboardingPlaceHolder({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            data.imageAsset,
            key: ValueKey(data.imageAsset),
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          data.title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            data.subtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
