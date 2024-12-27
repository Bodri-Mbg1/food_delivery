import 'package:flutter/material.dart';
import 'package:food_delivery/Classes/poulet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsPoulet extends StatefulWidget {
  final Poulet poulet;
  const DetailsPoulet({super.key, required this.poulet});

  @override
  State<DetailsPoulet> createState() => _DetailsPouletState();
}

class _DetailsPouletState extends State<DetailsPoulet> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff064635),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 50),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      IconsaxPlusBold.location,
                      color: Colors.white,
                    ),
                    Text(
                      'California, US',
                      style: GoogleFonts.varelaRound(
                          fontSize: 18, color: Colors.white),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/img/moi.png',
                          height: 280,
                          width: 280,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: ClipPath(
                clipper: ClipHolder(),
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 30),
            child: Image.asset(
              widget.poulet.imagePath, // Image dynamique
              height: 370,
              width: 370,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530, left: 18, right: 18),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xfff59e0b),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                        ),
                        const Spacer(),
                        Text(
                          quantity.toString().padLeft(
                              2, '0'), // Ajoute un zéro à gauche si nécessaire
                          style: GoogleFonts.varelaRound(
                              fontSize: 18, color: Colors.white),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.add_circle_sharp,
                              color: Colors.white),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.poulet.name, // Nom du burger
                            style: GoogleFonts.varelaRound(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Icon(
                                IconsaxPlusBold.location,
                                color: Colors.black,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                widget.poulet
                                    .description, // Description du burger
                                style: GoogleFonts.varelaRound(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "\$${(widget.poulet.price * quantity).toStringAsFixed(2)}", // Prix du burger
                        style: GoogleFonts.varelaRound(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xfff59e0b),
                            ),
                            Text('4.7', style: GoogleFonts.varelaRound()),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MdiIcons.fire,
                              color: const Color(0xfff59e0b),
                            ),
                            Text('150 Kcal', style: GoogleFonts.varelaRound()),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.delivery_dining,
                              color: Color(0xfff59e0b),
                            ),
                            Text('5-10 min', style: GoogleFonts.varelaRound()),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Descriptions',
                        style: GoogleFonts.varelaRound(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.varelaRound(
                            color: Colors.black,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text:
                                  'The Smoky BBQ Beast is a bold and flavorful burger crafted for true BBQ lovers. It features a juicy, flame-grilled beef patty smothered...',
                            ),
                            TextSpan(
                              text: ' Read more',
                              style: TextStyle(color: Color(0xfff59e0b)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Icon(
                              IconsaxPlusBold.bag_happy,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 70,
                            width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xfff59e0b),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.varelaRound(
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
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

    // Point de départ en haut à gauche
    path.moveTo(0, size.height * 0.1);

    // Courbe remontant légèrement vers la droite
    path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.20, // Point de contrôle 2
        size.width,
        size.height * 0.5 // Point de fin
        );

    // Fermeture de la forme
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
