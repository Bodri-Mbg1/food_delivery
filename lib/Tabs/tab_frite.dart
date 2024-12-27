import 'package:flutter/material.dart';
import 'package:food_delivery/Classes/frites.dart';
import 'package:food_delivery/Details/details_frite.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabFrite extends StatefulWidget {
  const TabFrite({super.key});

  @override
  State<TabFrite> createState() => _TabFriteState();
}

class _TabFriteState extends State<TabFrite> {
  final List<Frite> frites = [
    Frite(
      name: 'Classic Fries',
      description: 'Crispy Golden',
      price: 2.69,
      imagePath: 'assets/img/Frite (3).png',
    ),
    Frite(
      name: 'Cheesy Fries',
      description: 'Gooey Savory',
      price: 4.00,
      imagePath: 'assets/img/Frite (1).png',
    ),
    Frite(
      name: 'Spicy Fries',
      description: 'Zesty Bold',
      price: 7.50,
      imagePath: 'assets/img/Frite (2).png',
    ),
    Frite(
      name: 'Farlic Fries',
      description: 'Healthy & Tasty',
      price: 3.99,
      imagePath: 'assets/img/Frite (4).png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: frites.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Nombre de conteneurs par ligne
        crossAxisSpacing: 7.0, // Espacement horizontal
        mainAxisSpacing: 16.0, // Espacement vertical
        childAspectRatio: 3 / 4, // Ratio largeur/hauteur des conteneurs
      ),
      itemBuilder: (context, index) {
        final frite = frites[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsFrite(frite: frite),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 30,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Image.asset(
                        frite.imagePath,
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                        top: 5,
                        right: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              MdiIcons.fire,
                              size: 20,
                              color: const Color(0xfff59e0b),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    frite.name,
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    frite.description,
                    style: GoogleFonts.varelaRound(fontSize: 10),
                  ),
                  Text(
                    '\$${frite.price.toStringAsFixed(2)}',
                    style: GoogleFonts.varelaRound(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
