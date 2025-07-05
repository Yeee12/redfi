import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfi/starter/onboarding/onboarding_model.dart';
import 'package:redfi/starter/onboarding/onboarding_state.dart';

class OnboardingNotifier extends StateNotifier<OnboardingState> {
  final PageController pageController = PageController();
  final List<OnboardingPageData> pages;

  OnboardingNotifier(this.pages)
      : super(OnboardingState(
    currentPage: 0,
    backgroundGradient: pages[0].backgroundGradient,
  ));

  void setPage(int index) {
    state = state.copyWith(
      currentPage: index,
      backgroundGradient: pages[index].backgroundGradient,
    );
  }

  void nextPage(int totalPages) {
    if (state.currentPage < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
      final nextPage = state.currentPage + 1;
      state = state.copyWith(
        currentPage: nextPage,
        backgroundGradient: pages[nextPage].backgroundGradient,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
