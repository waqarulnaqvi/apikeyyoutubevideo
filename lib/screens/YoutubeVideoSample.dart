import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoSample extends StatefulWidget {
  const YoutubeVideoSample({super.key, required this.title});

  final String title;

  @override
  State<YoutubeVideoSample> createState() => _YoutubeVideoSampleState();
}

class _YoutubeVideoSampleState extends State<YoutubeVideoSample> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'kn9ejUcAbqM',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        isLive: false, // isLive should be false for non-live videos
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('YouTube Player'),
          ),
          body: Center(
            child: player, // Show the player widget here
          ),
        );
      },
    );
  }
}
