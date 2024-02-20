import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_query/src/views/components/gradientWidget.dart';

// Model
import '../../models/character_model.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;

  const CharacterDetailsPage({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 40,
                    )),
                Center(
                  child: Text(
                    'Character Details',
                    style: GoogleFonts.lora(color: Colors.white, fontSize: 25),
                  ),
                ),
                const SizedBox(),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: character.img,
                  child: Image.network(
                    character.img,
                    width: 300,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            Text(
              character.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              character.nickname,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              character.portrayed,
              style: TextStyle(
                color: Colors.red[100],
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
