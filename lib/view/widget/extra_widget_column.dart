import 'package:cleaning_services_apps/theme/color_theme.dart';
import 'package:flutter/material.dart';

Column extraWidget(String img, String name, bool isSelected) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: deepPurple400,
            ),
            child: Container(
              margin: const EdgeInsets.all(17.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icons/$img.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: isSelected == true
                ? Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: pink400,
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
      const SizedBox(
        height: 5.0,
      ),
      Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      )
    ],
  );
}
