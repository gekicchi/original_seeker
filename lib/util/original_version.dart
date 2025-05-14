import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:original_seeker/pages/original_details.dart';

class OriginalVersion extends StatelessWidget {
  final Original or;
  const OriginalVersion({super.key, required this.or});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          or.image,
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
                  or.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(or.adaptationName),
              Text(or.score),
            ],
          ),
        ],
      ),
    );
  }
}

class Original {
  late SvgPicture image;
  late String name;
  late String adaptationName;
  late String adaptatedInto;
  late String description;
  late String score;

  Original(
    SvgPicture img,
    String nm,
    String adNm,
    String adIn,
    String desc,
    String sc,
  ) {
    image = img;
    name = nm;
    adaptationName = adNm;
    adaptatedInto = adIn;
    description = desc;
    score = sc;
  }
}
