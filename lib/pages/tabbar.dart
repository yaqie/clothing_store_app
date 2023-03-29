import 'package:clothing_store_app/pages/home.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List _widgetOptions = [
    HomePage(),
    Text(
      'Index 1: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 2: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    borderRadius: BorderRadius.circular(1000),
                    child: const SizedBox(
                        height: 50, width: 50, child: Icon(Icons.home))),
                InkWell(
                    onTap: () {
                      _onItemTapped(1);
                    },
                    borderRadius: BorderRadius.circular(1000),
                    child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.shopping_bag_outlined))),
                InkWell(
                    onTap: () {
                      _onItemTapped(2);
                    },
                    borderRadius: BorderRadius.circular(1000),
                    child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.favorite_border_outlined))),
                InkWell(
                    onTap: () {
                      _onItemTapped(3);
                    },
                    borderRadius: BorderRadius.circular(1000),
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10000),
                              child: Image.asset(
                                'assets/images/profile.jpg',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ))),
              ],
            ),
          ),
        ));
  }
}
