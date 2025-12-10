import 'package:flutter/material.dart';
import '../data/dummy_songs.dart';
import '../models/song.dart';
import '../widgets/song_item.dart';

class SearchScreen extends StatefulWidget {
  final void Function(Song) onSongSelected;

  const SearchScreen({
    super.key,
    required this.onSongSelected,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  String _keyword = '';

  @override
  Widget build(BuildContext context) {
    final filteredSongs = dummySongs.where((song) {
      if (_keyword.isEmpty) return false;
      final q = _keyword.toLowerCase();
      return song.title.toLowerCase().contains(q) ||
          song.artist.toLowerCase().contains(q);
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Cari lagu atau artis',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onChanged: (value) {
              setState(() {
                _keyword = value;
              });
            },
          ),
        ),
        Expanded(
          child: _keyword.isEmpty
              ? const Center(
                  child: Text('Ketik kata kunci untuk mencari lagu'),
                )
              : ListView(
                  children: filteredSongs.map((song) {
                    return SongItem(
                      title: song.title,
                      artist: song.artist,
                      duration: song.duration,
                      onTap: () => widget.onSongSelected(song),
                    );
                  }).toList(),
                ),
        ),
      ],
    );
  }
}
