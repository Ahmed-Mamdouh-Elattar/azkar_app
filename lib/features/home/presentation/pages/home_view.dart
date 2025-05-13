import 'package:azkar_app/features/home/presentation/managers/body_cubit/body_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:azkar_app/features/home/presentation/widgets/custom_drawer.dart';
import 'package:azkar_app/features/home/presentation/widgets/home_view_appbar.dart';
import 'package:azkar_app/features/home/presentation/widgets/home_view_body_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BodyCubit(),
      child: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: HomeViewAppBar(scaffoldKey: scaffoldKey),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: const HomeViewBodyBuilder(),
      ),
    );
  }
}
