import 'package:flutter/material.dart';

class AppAudioPlayer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Duration duration;
  final Duration position;
  final VoidCallback onPlayPause;
  final VoidCallback onRewind;
  final VoidCallback onForward;
  final bool isPlaying;

  const AppAudioPlayer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.duration,
    required this.position,
    required this.onPlayPause,
    required this.onRewind,
    required this.onForward,
    this.isPlaying = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 80, backgroundImage: NetworkImage(imageUrl)),
        const SizedBox(height: 24),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Slider(
          value: position.inSeconds.toDouble(),
          max: duration.inSeconds.toDouble(),
          onChanged: (_) {},
          activeColor: Colors.yellow,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: const Icon(Icons.replay_10), onPressed: onRewind),
            IconButton(
              icon: Icon(
                isPlaying
                    ? Icons.pause_circle_filled
                    : Icons.play_circle_filled,
                size: 48,
                color: Colors.yellow,
              ),
              onPressed: onPlayPause,
            ),
            IconButton(
              icon: const Icon(Icons.forward_10),
              onPressed: onForward,
            ),
          ],
        ),
      ],
    );
  }
}
