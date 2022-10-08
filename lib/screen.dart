import 'package:emotion/appbar.dart';
import 'package:emotion/emomtion_state.dart';
import 'package:emotion/update_time.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common.dart';

class EmotionScreen extends StatefulWidget {
  const EmotionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EmotionScreen> createState() => _EmotionScreenState();
}

class _EmotionScreenState extends State<EmotionScreen> {
  @override
  Widget build(BuildContext context) {
    Emotion emotion = Provider.of<EmotionState>(context, listen: true).emotion;

    return Scaffold(
      appBar: const EmotionAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              emotionText[emotion] ?? '',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.person,
              size: 400,
              color: emotionColor[emotion],
            ),
            const UpdateTime(),
          ],
        ),
      ),
    );
  }
}
