import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class OnboardingPageData {
  final String title;
  final String subtitle;
  final String imageAsset;
  final LinearGradient backgroundGradient;

  OnboardingPageData({
    required this.title,
    required this.subtitle,
    required this.imageAsset,
    required this.backgroundGradient,
  });
}

final onboardingPagesProvider = Provider<List<OnboardingPageData>>((ref) {
  return [
    OnboardingPageData(
      title: "Search Flights Instantly",
      subtitle: "Catch the quiet things your mind forgets to keep.",
      imageAsset: 'assets/images/onboarding_2.png',
      backgroundGradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF3AA6F9), Color(0xFF6FB8F5)],
      ),
    ),
    OnboardingPageData(
      title: "Compare Prices Easily",
      subtitle: "Let the noise soften… let your feelings find their voice.",
      imageAsset: 'assets/images/onboarding_1.png',
      backgroundGradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF7C5CE0), Color(0xFFA88BEB)],
      ),
    ),
    OnboardingPageData(
      title: "Book with Confidence",
      subtitle: "One word. One page. One soft, unfolding change.",
      imageAsset: 'assets/images/onboarding_3.png',
      backgroundGradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFFF7A59), Color(0xFFFFA585)],
      ),
    ),
  ];
});

