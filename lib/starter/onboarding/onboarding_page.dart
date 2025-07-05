import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfi/router/navigation_helper.dart';
import 'package:redfi/starter/onboarding/onboarding_place_holder.dart';
import 'package:redfi/starter/onboarding/onboarding_provider.dart';
import 'package:redfi/utils/color_gradient_controller.dart';
import 'package:redfi/utils/indicator.dart';
import 'onboarding_model.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(onboardingPagesProvider);
    final state = ref.watch(onboardingProvider);
    final notifier = ref.read(onboardingProvider.notifier);
    final controller = notifier.pageController;
    final navigator = ref.read(navigationHelperProvider);

    return Scaffold(
      body: AnimatedGradientContainer(
        gradient: state.backgroundGradient,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  onPageChanged: notifier.setPage,
                  itemBuilder: (context, index) {
                    final pageData = pages[index];
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) => SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0.0, 0.1),
                          end: Offset.zero,
                        ).animate(animation),
                        child: FadeTransition(opacity: animation, child: child),
                      ),
                      child: OnboardingPlaceHolder(
                        key: ValueKey(pageData.title),
                        data: pageData,
                      ),
                    );
                  },
                ),
              ),
              DotIndicator(
                itemCount: pages.length,
                currentIndex: state.currentPage,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      if (state.currentPage == pages.length - 1) {
                        navigator.goToFlightSearch();
                      } else {
                        notifier.nextPage(pages.length);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      state.currentPage == pages.length - 1
                          ? 'Get Started'
                          : 'Next',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}


