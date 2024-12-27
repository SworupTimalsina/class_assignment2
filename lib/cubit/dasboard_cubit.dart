import 'package:class_assignment2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:class_assignment2/cubit/simple_intrest_cubit.dart';
import 'package:class_assignment2/view/area_of_circle_view.dart';
import 'package:class_assignment2/view/area_of_square_view.dart';
import 'package:class_assignment2/view/simple_intrest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._areaCubit,
    this._simpleIntrestCubit,
    this._squareCubit,
  ) : super(null);

  final CircleAreaCubit _areaCubit;
  final SimpleInterestCubit _simpleIntrestCubit;
  final SquareAreaCubit _squareCubit;

  void OpenAreaView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaCubit,
          child: const CircleAreaCubitView(),
        ),
      ),
    );
  }

  void OpenSimpleIntrestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleIntrestCubit,
          child: const SimpleInterestCubitView(),
        ),
      ),
    );
  }

  void OpenSquareView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _squareCubit,
          child: const SquareAreaCubitView(),
        ),
      ),
    );
  }
}
