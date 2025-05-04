import 'package:flutter/material.dart';

class AnimatedFillIcon extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final Duration duration;
  final double size;

  const AnimatedFillIcon({
    super.key,
    required this.isActive,
    required this.icon,
    this.duration = const Duration(milliseconds: 500),
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(icon, size: size, color: Colors.grey), // Unfilled base icon
        AnimatedContainer(
          duration: duration,
          height: isActive ? size : 0,
          width: size,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Icon(icon, size: size, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
