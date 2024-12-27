import 'package:flutter_bloc/flutter_bloc.dart';

class SquareAreaCubit extends Cubit<double> {
  SquareAreaCubit() : super(0);

  void calculateArea(double sideLength) {
    final area = sideLength * sideLength;
    emit(area);
  }
}
