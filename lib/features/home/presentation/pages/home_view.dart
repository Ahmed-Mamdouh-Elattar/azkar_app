import 'package:azkar_app/features/home/presentation/widgets/home_view_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: HomeViewAppBar());
  }
}
