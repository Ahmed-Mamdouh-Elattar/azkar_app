import 'package:azkar_app/features/home/presentation/widgets/azkar_view_body.dart';
import 'package:flutter/material.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("أذكار الصباح")),
      body: const SafeArea(child: AzkarViewBody()),
    );
  }
}
