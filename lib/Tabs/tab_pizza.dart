import 'package:flutter/material.dart';
import 'package:food_delivery/Classes/pizza.dart';
import 'package:food_delivery/Details/details_pizza.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabPizza extends StatefulWidget {
  const TabPizza({super.key});

  @override
  State<TabPizza> createState() => _TabPizzaState();
}

class _TabPizzaState extends State<TabPizza> {
  final List<Pizza> pizzas = [
    Pizza(
      name: 'Cheese Delight',
      description: 'Creamy Cheese',
      price: 16.69,
      imagePath: 'assets/img/Pizza (3).png',
    ),
    Pizza(
      name: 'Pepperoni Fun',
      description: 'Spicy Pepperoni',
      price: 18.00,
      imagePath: 'assets/img/Pizza (1).png',
    ),
    Pizza(
      name: 'BBQ Blast',
      description: 'Smoky Tangy',
      price: 17.50,
      imagePath: 'assets/img/Pizza (2).png',
    ),
    Pizza(
      name: 'Veggie Supreme',
      description: 'Healthy & Tasty',
      price: 15.99,
      imagePath: 'assets/img/Pizza (4).png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: pizzas.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de conteneurs par ligne
          crossAxisSpacing: 16.0, // Espacement horizontal
          mainAxisSpacing: 16.0, // Espacement vertical
          childAspectRatio: 3 / 4, // Ratio largeur/hauteur des conteneurs
        ),
        itemBuilder: (context, index) {
          final pizza = pizzas[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPizza(pizza: pizza),
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
                        pizza.imagePath,
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
                    pizza.name,
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    pizza.description,
                    style: GoogleFonts.varelaRound(fontSize: 10),
                  ),
                  Text(
                    '\$${pizza.price.toStringAsFixed(2)}',
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
