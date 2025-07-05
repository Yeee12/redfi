import 'package:flutter/material.dart';

class OnboardingState {
  final int currentPage;
  final LinearGradient backgroundGradient;

  OnboardingState({
    required this.currentPage,
    required this.backgroundGradient,
  });

  OnboardingState copyWith({
    int? currentPage,
    LinearGradient? backgroundGradient,
  }) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
    );
  }
}
