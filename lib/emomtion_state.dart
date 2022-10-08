import 'dart:math';

import 'package:emotion/common.dart';
import 'package:flutter/material.dart';

class EmotionState extends ChangeNotifier {
  Emotion _emotion = Emotion.happy;

  Emotion get emotion => _emotion;

  void changeEmotion() {
    _emotion = Emotion.values[Random().nextInt(3)];
    notifyListeners();
  }
}
