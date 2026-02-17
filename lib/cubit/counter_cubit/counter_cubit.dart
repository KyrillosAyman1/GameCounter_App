

import 'package:basketball_counter/cubit/counter_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamA = 0;
  int teamB = 0;

  void teamsChanged(String teamName, int points) {
    if (teamName == "A") {
      teamA += points;
      emit(CounterTeamAChanged());
    } else {
      teamB += points;
      emit(CounterTeamBChanged());
    }
    
  }

    
}
