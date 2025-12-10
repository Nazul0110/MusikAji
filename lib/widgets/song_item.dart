import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final String title;
  final String artist;
  final String duration;
  final VoidCallback? onTap;

  const SongItem({
    super.key,
    required this.title,
    required this.artist,
    required this.duration,
    this.onTap,
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
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Color(0xFF7F5AF0), Color(0xFF9B8AFB)],
              ),
            ),
            child: const Icon(
              Icons.music_note,
              color: Colors.white,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            artist,
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: Text(
            duration,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 12,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
