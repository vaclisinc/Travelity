import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class InterestSetup extends StatefulWidget {
  const InterestSetup({super.key});

  @override
  State<InterestSetup> createState() => _InterestSetupState();
}

class _InterestSetupState extends State<InterestSetup> {
  List<InterestTag> selectedTags = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availInterestTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.interests!.contains(e),
                      onSelected: (value) {
                        if (value) {
                          selectedTags.add(e);
                        } else {
                          selectedTags.remove(e);
                        }
                        BlocProvider.of<UserSetupBloc>(context)
                            .add(SetInterests(interests: selectedTags));
                      },
                    ))
                .toList());
      },
    );
  }
}
