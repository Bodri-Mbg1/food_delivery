import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/Page1.dart';
import 'package:food_delivery/Screens/Page2.dart';
import 'package:food_delivery/Screens/Page3.dart';
import 'package:food_delivery/Screens/Page4.dart';
import 'package:food_delivery/Screens/Page5.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _selectedIndex = 0;

  // Liste des pages
  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex], // Affiche la page sélectionnée
      bottomNavigationBar: Container(
        height: 90, // Hauteur du conteneur
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xff064635), // Fond vert arrondi
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff064635),
            currentIndex: _selectedIndex, // Indique l'élément sélectionné
            onTap: _onItemTapped, // Change la page à afficher
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xfff59e0b),
            unselectedItemColor: Colors.white,
            showSelectedLabels: false, // Pas de label
            showUnselectedLabels: false, // Pas de label
            selectedIconTheme: const IconThemeData(
                size: 35), // Taille des icônes sélectionnées
            unselectedIconTheme: const IconThemeData(
                size: 30), // Taille des icônes non sélectionnées
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home_11),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconsaxPlusBold.message,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    IconsaxPlusBold.bag_happy,
                    color: Color(0xfff59e0b),
                    size: 30,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconsaxPlusBold.notification,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
