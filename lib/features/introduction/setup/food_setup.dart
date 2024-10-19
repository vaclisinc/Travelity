import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class FoodSetup extends StatefulWidget {
  const FoodSetup({super.key});

  @override
  State<FoodSetup> createState() => _FoodSetupState();
}

class _FoodSetupState extends State<FoodSetup> {
  List<FoodTag> selectedTags = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        return Wrap(
            spacing: 10,
            children: availFoodTags
                .map((e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e.tag),
                      selected: state.user.food!.contains(e),
                      onSelected: (value) {
                        if (value) {
                          selectedTags.add(e);
                        } else {
                          selectedTags.remove(e);
                        }
                        BlocProvider.of<UserSetupBloc>(context)
                            .add(SetFood(food: selectedTags));
                      },
                    ))
                .toList());
      },
    );
  }
}
