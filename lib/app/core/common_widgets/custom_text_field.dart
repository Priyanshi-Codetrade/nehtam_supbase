import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function() onTap;

  const CustomTextField({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2.0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          width: MediaQuery.of(context).size.width * 0.52,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Looking for good taste?  ",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
