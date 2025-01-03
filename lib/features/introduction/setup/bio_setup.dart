import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';
import 'package:travelity/theme.dart';

class BioSetup extends StatefulWidget {
  const BioSetup({super.key});

  @override
  State<BioSetup> createState() => _BioSetupState();
}

class _BioSetupState extends State<BioSetup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return BlocBuilder<UserSetupBloc, UserSetupState>(
      builder: (context, state) {
        controller.text = state.user.bio ?? '';
        return TextField(
          cursorColor: theme().primaryColor,
          controller: controller,
          decoration: InputDecoration(
            fillColor: theme().primaryColor,
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
