import 'package:bloc_project3/bloc/post_bloc.dart';
import 'package:bloc_project3/bloc/post_event.dart';
import 'package:bloc_project3/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderPage extends StatelessWidget {
  const BlocProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return PostBloc()..add(FetchPostEvent());
        },
        child: const HomePage(),
      ),
    );
  }
}
