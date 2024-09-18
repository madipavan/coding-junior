import 'package:codingjunior/core/screensize/screen_size.dart';
import 'package:flutter/material.dart';

class BasicIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const BasicIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: ScreenSize.height * 0.12,
        width: ScreenSize.width * 0.12,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            size: ScreenSize.width * 0.05,
          ),
        ),
      ),
    );
  }
}

// IconButton(
        
//         style: IconButton.styleFrom(
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         onPressed: onPressed,
//         icon: Icon(icon));