
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counterapp/features/counter/presentation/bloc/counter_cubit.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<CounterCubit>().increment(),
      child: const Icon(Icons.add),
    );
  }
}
