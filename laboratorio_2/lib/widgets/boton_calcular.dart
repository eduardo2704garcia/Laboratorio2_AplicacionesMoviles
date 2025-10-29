import 'package:flutter/material.dart';

class BotonCalcular extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const BotonCalcular({
    super.key,
    required this.onPressed,
    this.label = 'Calcular',
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFE88A60),
        minimumSize: const Size(double.infinity, 65),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
