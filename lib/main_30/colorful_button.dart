import 'package:flutter/material.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  final Color mainColor;
  final Color secondColor;
  final IconData icon; // tambahkan icon

  const ColorfulButton(
    this.mainColor,
    this.secondColor,
    this.icon, {
    super.key,
  });

  @override
  State<ColorfulButton> createState() => _ColorfulButtonState();
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {});
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? widget.secondColor : widget.mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: isPressed ? widget.secondColor : widget.mainColor,
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(widget.icon, color: Colors.white),
                    ),
                  ),
                ),
                // Efek putih di empat sudut
                for (final offset in [
                  const Offset(30, 30),
                  const Offset(-30, 30),
                  const Offset(-30, -30),
                  const Offset(30, -30),
                ])
                  Transform.translate(
                    offset: offset,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
