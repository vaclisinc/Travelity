import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class AccommodationSetup extends StatefulWidget {
  const AccommodationSetup({super.key});

  @override
  State<AccommodationSetup> createState() => _AccommodationSetupState();
}

class _AccommodationSetupState extends State<AccommodationSetup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availAccommodationTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.accommodation == e,
                      onSelected: (value) {
                        if (value) {
                          BlocProvider.of<UserSetupBloc>(context)
                              .add(SetAccommodation(accommodation: e));
                        }
                      },
                    ))
                .toList());
      },
    );
  }
}
