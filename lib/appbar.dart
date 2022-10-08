import 'package:emotion/emomtion_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common.dart';

class EmotionAppbar extends StatelessWidget implements PreferredSizeWidget {
  const EmotionAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Emotion emotion = Provider.of<EmotionState>(context, listen: true).emotion;

    return AppBar(
      title: Text(
        emotionTitle[emotion] ?? '...',
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      backgroundColor: emotionColor[emotion],
    );
  }

  @override
  Size get preferredSize => const Size(0, kToolbarHeight);
}
