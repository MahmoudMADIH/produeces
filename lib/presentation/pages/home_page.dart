import 'package:flutter/material.dart';
import '../components/app_section_title.dart';
import '../components/app_audio_player.dart';
import '../components/app_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إذاعة القرآن الكريم'),
        actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const AppSectionTitle(title: 'البث المباشر', icon: Icons.radio),
            AppCard(
              child: AppAudioPlayer(
                title: 'سورة البقرة',
                subtitle: 'الشيخ عبد الباسط عبد الصمد',
                imageUrl:
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                duration: Duration(minutes: 60),
                position: Duration(minutes: 15),
                onPlayPause: () {},
                onRewind: () {},
                onForward: () {},
                isPlaying: false,
              ),
            ),
            const SizedBox(height: 24),
            const AppSectionTitle(title: 'البرامج', icon: Icons.list),
            // TODO: Add program list here
          ],
        ),
      ),
    );
  }
}
