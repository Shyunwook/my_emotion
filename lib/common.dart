import 'package:flutter/material.dart';

enum Emotion {
  happy,
  angry,
  sad,
}

Map<Emotion, String> emotionTitle = {
  Emotion.happy: 'I am happy!!',
  Emotion.sad: 'Leave me alone...',
  Emotion.angry: 'grrr....!!',
};
Map<Emotion, String> emotionText = {
  Emotion.happy: 'Happy',
  Emotion.sad: 'Sad',
  Emotion.angry: 'Angry',
};

Map<Emotion, Color> emotionColor = {
  Emotion.happy: Colors.orange,
  Emotion.sad: Colors.blue,
  Emotion.angry: Colors.red,
};
