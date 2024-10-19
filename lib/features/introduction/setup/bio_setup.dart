import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

class BioSetup extends StatefulWidget {
  const BioSetup({super.key});

  @override
  State<BioSetup> createState() => _BioSetupState();
}

class _BioSetupState extends State<BioSetup> {
  List<InterestTag> selectedTags = [];
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        _controller.text = state.user.bio ?? '';
        return TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: '請輸入您的簡單介紹',
          ),
          onChanged: (value) {
            BlocProvider.of<UserSetupBloc>(context).add(SetBio(bio: value));
          },
        );
      },
    );
  }
}
