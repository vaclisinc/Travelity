import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class TravelPrefSetup extends StatefulWidget {
  const TravelPrefSetup({super.key});

  @override
  State<TravelPrefSetup> createState() => _TravelPrefSetupState();
}

class _TravelPrefSetupState extends State<TravelPrefSetup> {
  List<TravelPreferenceTag> selectedTags = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availTravelPreferenceTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.travelPreference!.contains(e),
                      onSelected: (value) {
                        if (value) {
                          selectedTags.add(e);
                        } else {
                          selectedTags.remove(e);
                        }
                        BlocProvider.of<UserSetupBloc>(context).add(
                            SetTravelPreference(
                                travelPreference: selectedTags));
                      },
                    ))
                .toList());
      },
    );
  }
}
