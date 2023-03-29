import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: const Color(0XFFEAEAEA),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search ...',
                  prefixIcon: Icon(Icons.search)),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(1000),
                child: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.notifications_none_outlined))),
          )
        ],
      ),
    );
  }
}
