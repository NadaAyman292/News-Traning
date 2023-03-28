import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 239, 242),
                borderRadius: BorderRadius.circular(25)),
            child: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 25,
            ),
          ),
         const Spacer(),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 239, 242),
                    borderRadius: BorderRadius.circular(25)),
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 242),
                      borderRadius: BorderRadius.circular(25)),
                  child: badges.Badge(
                    position: badges.BadgePosition.custom(top: 1, end: 1),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      size: 25,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
