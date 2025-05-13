import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:original_seeker/pages/original_details.dart';
import 'util_functions.dart';

class OriginalVersion extends StatelessWidget {
  final SvgPicture image;
  final String name;
  final String adaptationName;
  final String score;

  const OriginalVersion({
    super.key,
    required this.image,
    required this.name,
    required this.adaptationName,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          image,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => OriginalDetails(originalVersion: this),
                      ),
                    ),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(adaptationName),
              Text(score),
            ],
          ),
        ],
      ),
    );
  }
}
