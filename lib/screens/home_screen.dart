
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pexels-rok-romih-1746122-3312664 (1).jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Text("WELCOME",
                            style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                  ),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Color.fromARGB(184, 0, 0, 0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Text("Profile"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Color.fromARGB(184, 0, 0, 0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/flora');
                  },
                  child: Text("Flora"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Color.fromARGB(184, 0, 0, 0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fauna');
                  },
                  child: Text("Fauna"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
