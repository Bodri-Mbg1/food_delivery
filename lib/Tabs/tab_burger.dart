import 'package:flutter/material.dart';
import 'package:food_delivery/Classes/burgers_class.dart';
import 'package:food_delivery/Details/details_burger.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabBurger extends StatefulWidget {
  const TabBurger({super.key});

  @override
  State<TabBurger> createState() => _TabBurgerState();
}

class _TabBurgerState extends State<TabBurger> {
  final List<Burger> burgers = [
    Burger(
      name: 'Beef Burger',
      description: 'Cheesy Mazzarella',
      price: 6.69,
      imagePath: 'assets/img/Burger (1).png',
    ),
    Burger(
      name: 'The Big Bite',
      description: 'Cheesy Mazzarella',
      price: 8.00,
      imagePath: 'assets/img/Burger (5).png',
    ),
    Burger(
      name: 'Chicken Delight',
      description: 'Grilled Chicken',
      price: 7.50,
      imagePath: 'assets/img/Burger (2).png',
    ),
    Burger(
      name: 'Veggie Burger',
      description: 'Healthy & Tasty',
      price: 5.99,
      imagePath: 'assets/img/Burger (4).png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: burgers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de conteneurs par ligne
          crossAxisSpacing: 16.0, // Espacement horizontal
          mainAxisSpacing: 16.0, // Espacement vertical
          childAspectRatio: 3 / 4, // Ratio largeur/hauteur des conteneurs
        ),
        itemBuilder: (context, index) {
          final burger = burgers[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsBurger(burger: burger),
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
                        burger.imagePath,
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
                    burger.name,
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    burger.description,
                    style: GoogleFonts.varelaRound(fontSize: 10),
                  ),
                  Text(
                    '\$${burger.price.toStringAsFixed(2)}',
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
