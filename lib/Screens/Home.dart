import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/Screen1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  PageController pageController = PageController();
  String buttonText = "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff064635),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            right: 250,
            child: Transform.rotate(
              angle: 0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (1).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 250,
            right: 0,
            child: Transform.rotate(
              angle: -0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (2).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 0,
            right: 320,
            child: Transform.rotate(
              angle: 0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (3).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 320,
            right: 0,
            child: Transform.rotate(
              angle: -0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (4).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 320,
            child: Transform.rotate(
              angle: 0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (5).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 320,
            right: 0,
            child: Transform.rotate(
              angle: -0.5,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/img/P (5).png',
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    // Met à jour l'index actuel et le texte du bouton
                    setState(() {
                      _currentIndex = index;
                      buttonText = (index == 2) ? "Get started" : "Next";
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 200),
                      child: Center(
                        child: SizedBox(
                          height: 900,
                          width: 900,
                          child: Image.asset(
                            'assets/img/chef11.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 200, top: 100),
                      child: Center(
                        child: SizedBox(
                          height: 600,
                          width: 600,
                          child: Image.asset(
                            'assets/img/chef3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 200),
                      child: Center(
                        child: SizedBox(
                          height: 500,
                          width: 500,
                          child: Image.asset(
                            'assets/img/pngegg (9).png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: ClipPath(
                clipper: ClipHolder(),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        children: [
                          Text(
                            'Food You Love',
                            style: GoogleFonts.varelaRound(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff064635)),
                          ),
                          Text(
                            'Delivered with Care',
                            style: GoogleFonts.varelaRound(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xfff59e0b)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lest's started on your journey\nto hossle-free food delivery",
                            style: GoogleFonts.varelaRound(
                                fontSize: 15, color: const Color(0xff064635)),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SmoothPageIndicator(
                        controller: pageController, // Le contrôleur de PageView
                        count: 3, // Nombre total de pages
                        effect: const ExpandingDotsEffect(
                          spacing: 4.5,
                          expansionFactor: 3.0, // Expansion des cercles actifs
                          activeDotColor:
                              Color(0xfff59e0b), // Couleur du cercle actif
                          dotColor:
                              Color(0xffface83), // Couleur des cercles inactifs

                          dotWidth: 7.0, // Largeur des cercles
                          dotHeight: 7.0, // Hauteur des cercles
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_currentIndex == 2) {
                            // Naviguer vers Screen1 uniquement sur la dernière page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Screen1(),
                              ),
                            );
                          } else {
                            // Passer à la page suivante
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              buttonText, // Utilise la variable dynamique buttonText ici
                              style: GoogleFonts.varelaRound(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClipHolder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.15);

    path.quadraticBezierTo(size.width / 2, 0, size.width, size.height * 0.15);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
