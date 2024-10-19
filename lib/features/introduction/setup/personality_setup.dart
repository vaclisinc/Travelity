import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class PersonalitySetup extends StatefulWidget {
  const PersonalitySetup({super.key});

  @override
  State<PersonalitySetup> createState() => _PersonalitySetupState();
}

class _PersonalitySetupState extends State<PersonalitySetup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availPersonalityTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.personality == e,
                      onSelected: (value) {
                        if (value) {
                          BlocProvider.of<UserSetupBloc>(context)
                              .add(SetPersonality(personality: e));
                        }
                      },
                    ))
                .toList());
      },
    );
  }
}
