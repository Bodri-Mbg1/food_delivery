import 'package:flutter/material.dart';
import 'package:food_delivery/Classes/poulet.dart';
import 'package:food_delivery/Details/details_poulet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabPoulet extends StatefulWidget {
  const TabPoulet({super.key});

  @override
  State<TabPoulet> createState() => _TabPouletState();
}

class _TabPouletState extends State<TabPoulet> {
  final List<Poulet> poulets = [
    Poulet(
      name: 'Beef Burger',
      description: 'Cheesy Mazzarella',
      price: 6.69,
      imagePath: 'assets/img/Po (3).png',
    ),
    Poulet(
      name: 'The Big Bite',
      description: 'Cheesy Mazzarella',
      price: 8.00,
      imagePath: 'assets/img/Po (2).png',
    ),
    Poulet(
      name: 'Chicken Delight',
      description: 'Grilled Chicken',
      price: 7.50,
      imagePath: 'assets/img/Po (4).png',
    ),
    Poulet(
      name: 'Veggie Burger',
      description: 'Healthy & Tasty',
      price: 5.99,
      imagePath: 'assets/img/Po (1).png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: poulets.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de conteneurs par ligne
          crossAxisSpacing: 16.0, // Espacement horizontal
          mainAxisSpacing: 16.0, // Espacement vertical
          childAspectRatio: 3 / 4, // Ratio largeur/hauteur des conteneurs
        ),
        itemBuilder: (context, index) {
          final poulet = poulets[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPoulet(poulet: poulet),
                ),
              );
            },
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
                        poulet.imagePath,
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
                    poulet.name,
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    poulet.description,
                    style: GoogleFonts.varelaRound(fontSize: 10),
                  ),
                  Text(
                    '\$${poulet.price.toStringAsFixed(2)}',
                    style: GoogleFonts.varelaRound(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
