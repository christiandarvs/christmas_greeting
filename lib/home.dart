import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _showDialog(context);
              },
              child: Image.network(
                  'https://images.pexels.com/photos/1681103/pexels-photo-1681103.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                  'https://media3.giphy.com/media/W5OKcz8BXosb5S7mjf/giphy.gif?cid=ecf05e47547mpysb00us97krz6d2dyew5dzff724moj1hdua&rid=giphy.gif&ct=s'),
            ),
            Text(
              'Tap the Christmas Gift',
              style: GoogleFonts.poppins(
                fontSize: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: const Text("Merry Christmas!"),
        content: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
              'https://media4.giphy.com/media/Y20SjTPVNAC0hQnE3d/giphy.gif?cid=ecf05e47z39fe5nzvxromej8r8a2k9vc3ke3noehoqpjggl3&rid=giphy.gif&ct=g'),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
