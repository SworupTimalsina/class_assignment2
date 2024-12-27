import 'package:class_assignment2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:class_assignment2/cubit/dasboard_cubit.dart';
import 'package:class_assignment2/cubit/simple_intrest_cubit.dart';
import 'package:class_assignment2/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CircleAreaCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => SquareAreaCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CircleAreaCubit>(),
            context.read<SimpleInterestCubit>(),
            context.read<SquareAreaCubit>(),
          ),
        ),
      ],
      child: const MaterialApp(
        title: 'Bloc Starter',
        debugShowCheckedModeBanner: false,
        home: DashboardView(),
      ),
    );
  }
}
