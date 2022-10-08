import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'emomtion_state.dart';

class UpdateTime extends StatefulWidget {
  const UpdateTime({Key? key}) : super(key: key);

  @override
  State<UpdateTime> createState() => _UpdateTimeState();
}

class _UpdateTimeState extends State<UpdateTime> {
  var currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EmotionState emotionState =
        Provider.of<EmotionState>(context, listen: true);

    return Column(
      children: [
        Text(
          DateFormat('yyyy-MM-dd HH:mm:ss').format(currentTime),
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blueGrey,
            ),
          ),
          onPressed: () {
            emotionState.changeEmotion();
            setState(() {
              currentTime = DateTime.now();
            });
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'update emotion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
