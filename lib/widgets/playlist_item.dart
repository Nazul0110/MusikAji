import 'package:flutter/material.dart';

class PlaylistItem extends StatelessWidget {
  final String name;
  final int songCount;

  const PlaylistItem({
    super.key,
    required this.name,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          leading: const Icon(Icons.queue_music),
          title: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text('$songCount lagu'),
          onTap: () {},
        ),
      ),
    );
  }
}
