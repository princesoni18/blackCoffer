import 'package:blackcoffer_assignment/utils/colors.dart';
import 'package:capped_progress_indicator/capped_progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * (2.5 / 3),
            height: 260,
            right: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ]),
              width: MediaQuery.of(context).size.width * (2.5 / 3),
             
              alignment: Alignment.center,
               child:  Padding(
                padding:  const EdgeInsets.only(
                    left: 16, top: 8, right: 16, bottom: 4),
                child: content(),
              ),
            ),
          ),
          Positioned(
              top: 15,
              left: 5,
              child: Container(
                height: 80,
                width: 70,
                decoration: BoxDecoration(
                    color: tertiary,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 3,
                      offset: Offset(0,3),)
                    ]),
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                      child: Text(
                    "PS",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
              ))
        ],
      ),
    );
  }

  Widget content() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Prince Soni",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(255, 25, 64, 90)),
            ),
            Text(
              "Bhopal | Student Intern",
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 25, 64, 90)),
            ),
            Text(
              "within 100-200 m",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 25, 64, 90)),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
                width: 120,
                child: LinearCappedProgressIndicator(
                    minHeight: 13,
                    backgroundColor: Color.fromARGB(255, 221, 221, 221),
                    value: 0.3,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 105, 125, 138)),
                    cornerRadius: 10)),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
            child: Text(
          "Coffee | Buisness | Hobbies | Friendship | Movies | Dining | Dating |",
          style: TextStyle(
              color: Color.fromARGB(255, 25, 64, 90),
              fontWeight: FontWeight.w600,
              fontSize: 14),
        )),
        Expanded(
            child: Text(
          "Hi community! I am open to new connections.",
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 25, 64, 90),
          ),
        )),
      ],
    );
  }
}
