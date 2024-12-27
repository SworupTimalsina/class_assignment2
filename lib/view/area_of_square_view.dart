import 'package:class_assignment2/cubit/area_of_square_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SquareAreaCubitView extends StatelessWidget {
  const SquareAreaCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController sideController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Square Area Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: sideController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Side Length',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final double? side = double.tryParse(sideController.text);
                if (side != null) {
                  context.read<SquareAreaCubit>().calculateArea(side);
                }
              },
              child: const Text('Calculate Area'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<SquareAreaCubit, double>(
              builder: (context, area) {
                return Text(
                  'Area: ${area.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
