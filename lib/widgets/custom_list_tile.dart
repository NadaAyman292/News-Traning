import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Custom_ListTile extends StatelessWidget {
  const Custom_ListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/sport.jpg"),
                )),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sports",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Text(
                  "What Traning Do Vollyball Players Need? ",
                  maxLines: 2,
                  style: TextStyle(
                    overflow: TextOverflow.visible,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 12,
                    backgroundImage: AssetImage("assets/sport.jpg"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Mckindney",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 170, 168, 168)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 170, 168, 168),
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    DateFormat.yMMMMd().format(DateTime.now()),
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 170, 168, 168)),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
