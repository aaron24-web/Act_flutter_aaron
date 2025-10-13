
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counterapp/features/counter/presentation/bloc/counter_cubit.dart';
import 'package:counterapp/features/counter/presentation/bloc/counter_state.dart';

class CounterLabelText extends StatelessWidget {
  const CounterLabelText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Text(
          state.count == 1 ? 'click...' : 'clicks...',
          style: Theme.of(context).textTheme.bodyLarge,
        );
      },
    );
  }
}
