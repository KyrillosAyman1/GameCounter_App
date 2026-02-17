import 'package:basketball_counter/cubit/counter_cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_cubit/counter_state.dart';
import 'package:basketball_counter/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 197, 233, 249),
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text(
              "Points Counter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          body: Column(
            spacing: 40,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 98, 144),
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamA}",
                        style: TextStyle(
                          fontSize: 95,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 98, 144),
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Add 1 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("A", 1);
                        },
                      ),
                      CustomElevatedButton(
                        text: "Add 2 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("A", 2);
                        },
                      ),
                      CustomElevatedButton(
                        text: "Add 3 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("A", 3);
                        },
                      ),
                      CustomElevatedButton(
                        text: "remove 1 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("A", -1);
                        },
                      ),
                      CustomElevatedButton(
                        text: "remove 2 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("A", -2);
                        },
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 480,
                    child: VerticalDivider(
                      color: Colors.lightBlue,
                      thickness: 1.1,
                    ),
                  ),

                  Column(
                    spacing: 10,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 98, 144),
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamB}",
                        style: TextStyle(
                          fontSize: 95,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 98, 144),
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Add 1 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("B", 1);
                        },
                      ),
                      CustomElevatedButton(
                        text: "Add 2 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("B", 2);
                        },
                      ),

                      CustomElevatedButton(
                        text: "Add 3 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("B", 3);
                        },
                      ),
                      CustomElevatedButton(
                        text: "remove 1 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("B", -1);
                        },
                      ),
                      CustomElevatedButton(
                        text: "remove 2 point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamsChanged("B", -2);
                        },
                      ),
                    ],
                  ),
                ],
              ),

              CustomElevatedButton(
                text: "Reset",
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamsChanged(
                    "B",
                    -BlocProvider.of<CounterCubit>(context).teamB,
                  );
                  BlocProvider.of<CounterCubit>(context).teamsChanged(
                    "A",
                    -BlocProvider.of<CounterCubit>(context).teamA,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
