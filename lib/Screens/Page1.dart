import 'package:flutter/material.dart';
import 'package:food_delivery/Tabs/tab_burger.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Change page when tab is clicked
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Icon(Icons.browse_gallery),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.place),
                    Text(
                      'California, US',
                      style: GoogleFonts.varelaRound(
                          fontSize: 18, color: const Color(0xff064635)),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff064635),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('The Fastest in',
                            style: GoogleFonts.varelaRound(
                                fontSize: 25, color: Colors.white)),
                        Text('Food Delivery',
                            style: GoogleFonts.varelaRound(
                              fontSize: 25,
                              color: const Color(0xfff59e0b),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: const Color(0xfff59e0b),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text('Order Now',
                                  style: GoogleFonts.varelaRound(
                                      color: Colors.white)),
                            ))
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              children: [
                Text('Categories',
                    style: GoogleFonts.varelaRound(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )),
                const Spacer(),
                Text('See all',
                    style: GoogleFonts.varelaRound(
                      fontSize: 18,
                      color: const Color(0xff064635),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _onTabTapped(0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff064635)),
                        color: _selectedIndex == 0
                            ? const Color(0xff064635)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/img/Burger (1).png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 15,
                              color: _selectedIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _onTabTapped(1),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff064635)),
                        color: _selectedIndex == 1
                            ? const Color(0xff064635)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 15,
                              color: _selectedIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _onTabTapped(2),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff064635)),
                        color: _selectedIndex == 2
                            ? const Color(0xff064635)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 15,
                              color: _selectedIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _onTabTapped(2),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff064635)),
                        color: _selectedIndex == 3
                            ? const Color(0xff064635)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 15,
                              color: _selectedIndex == 3
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                TabBurger(),
                Center(
                  child: Text('Page 2'),
                ),
                Center(
                  child: Text('Page 3'),
                ),
                Center(
                  child: Text('Page 3'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
