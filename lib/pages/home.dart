import 'package:clothing_store_app/components/carditem.dart';
import 'package:clothing_store_app/components/search.dart';
import 'package:clothing_store_app/components/title.dart';
import 'package:clothing_store_app/data/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SEARCH SECTION
              const SearchWidget(),

              // RECOMMENDED SECTION
              TitleWidget(
                title: 'Recommended for you',
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ...dataProducts.map(
                      (e) => CardItem(
                          title: e['title'].toString(),
                          favorite: e['favorite'].toString(),
                          image: e['image'].toString(),
                          price: e['price'].toString(),
                          rating: e['rating'].toString()),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // TRENDING SECTION
              TitleWidget(
                title: 'Trending Products',
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ...dataProducts.map(
                      (e) => CardItem(
                          title: e['title'].toString(),
                          favorite: e['favorite'].toString(),
                          image: e['image'].toString(),
                          price: e['price'].toString(),
                          rating: e['rating'].toString()),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
