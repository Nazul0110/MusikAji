import 'package:flutter/material.dart';
import '../data/dummy_songs.dart';
import '../models/song.dart';
import '../widgets/playlist_item.dart';
import '../widgets/song_item.dart';

class PlaylistScreen extends StatelessWidget {
  final void Function(Song) onSongSelected;

  const PlaylistScreen({
    super.key,
    required this.onSongSelected,
  });

  @override
  Widget build(BuildContext context) {
    final workout = [dummySongs[0], dummySongs[1]];
    final chill = [dummySongs[1], dummySongs[2]];
    final focus = [dummySongs[2], dummySongs[3]];

    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Playlist Kamu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const PlaylistItem(name: 'Workout Hits', songCount: 2),
        ...workout.map(
          (song) => SongItem(
            title: song.title,
            artist: song.artist,
            duration: song.duration,
            onTap: () => onSongSelected(song),
          ),
        ),
        const PlaylistItem(name: 'Chill & Relax', songCount: 2),
        ...chill.map(
          (song) => SongItem(
            title: song.title,
            artist: song.artist,
            duration: song.duration,
            onTap: () => onSongSelected(song),
          ),
        ),
        const PlaylistItem(name: 'Belajar Fokus', songCount: 2),
        ...focus.map(
          (song) => SongItem(
            title: song.title,
            artist: song.artist,
            duration: song.duration,
            onTap: () => onSongSelected(song),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
