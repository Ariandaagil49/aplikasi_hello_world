import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer;
  String durasi = "00:00";

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();

    // Update durasi saat audio berjalan
    audioPlayer.onPositionChanged.listen((Duration d) {
      setState(() {
        durasi = d.toString().split('.').first;
      });
    });

    // Set agar audio loop
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  Future<void> playSound() async {
    await audioPlayer.play(
      UrlSource(
        'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      ),
    );
  }

  Future<void> pauseSound() async {
    await audioPlayer.pause();
  }

  Future<void> stopSound() async {
    await audioPlayer.stop();
  }

  Future<void> resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Playing Music')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(onPressed: playSound, child: const Text('Play')),
              ElevatedButton(onPressed: pauseSound, child: const Text('Pause')),
              ElevatedButton(onPressed: stopSound, child: const Text('Stop')),
              ElevatedButton(
                onPressed: resumeSound,
                child: const Text('Resume'),
              ),
              Text(
                "Durasi: $durasi",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
