import 'package:flutter/material.dart';
import 'package:redfi/utils/custom_app_bar.dart';

class FlightSearchScreen extends StatelessWidget {
  const FlightSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Search Flights'),
    );
  }
}
