import 'package:azkar_app/features/home/presentation/managers/body_cubit/body_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:azkar_app/features/home/presentation/widgets/home_view_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BodyCubit(),
      child: const Scaffold(
        extendBody: true,
        appBar: HomeViewAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
