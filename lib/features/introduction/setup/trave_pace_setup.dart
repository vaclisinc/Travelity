import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class TravelPaceSetup extends StatefulWidget {
  const TravelPaceSetup({super.key});

  @override
  State<TravelPaceSetup> createState() => _TravelPaceSetupState();
}

class _TravelPaceSetupState extends State<TravelPaceSetup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availTravelPaceTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.travelPace == e,
                      onSelected: (value) {
                        if (value) {
                          BlocProvider.of<UserSetupBloc>(context)
                              .add(SetTravelPace(travelPace: e));
                        }
                      },
                    ))
                .toList());
      },
    );
  }
}
