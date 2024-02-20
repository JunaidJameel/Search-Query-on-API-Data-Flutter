import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Model
import '../../models/character_model.dart';

// Page
import '../pages/character_details_page.dart';

class MyList extends StatelessWidget {
  final Character character;
  const MyList({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CharacterDetailsPage(character: character)));
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width * .3,
                  height: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Hero(
                      tag: character.img,
                      child: Image.network(
                        character.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .55,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      character.name,
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          character.nickname,
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          character.portrayed,
                          style: GoogleFonts.poppins(
                              color: Colors.red[100], fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
