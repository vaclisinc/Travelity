import 'package:flutter/material.dart';

class Hint extends StatelessWidget {
  const Hint({super.key, required this.generating});

  final bool generating;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.blueGrey,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: generating ? null : () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            generating ? '正在為您規劃行程  ' : '行程規劃完畢，點此前往 ',
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          generating
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
              : const Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
