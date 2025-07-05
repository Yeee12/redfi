import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfi/starter/onboarding/onboarding_model.dart';
import 'onboarding_state.dart';
import 'onboarding_state_notifier.dart';

final onboardingProvider =
StateNotifierProvider<OnboardingNotifier, OnboardingState>((ref) {
  final pages = ref.watch(onboardingPagesProvider);
  return OnboardingNotifier(pages);
});
