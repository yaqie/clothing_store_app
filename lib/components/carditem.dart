import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  String? title, image, price, rating, favorite;
  CardItem({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
          // color: Colors.red,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image!,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: InkWell(
                            onTap: () {
                              // print('testing');
                            },
                            child: Icon(
                              favorite! == 'true'
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: favorite! == 'true'
                                  ? Colors.red
                                  : Colors.black,
                            )),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  title!,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price!,
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: Color(0xFFd6a41a),
                      ),
                      Text(
                        rating!,
                        style: const TextStyle(
                          color: Color(0xFFd6a41a),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
