import 'package:flutter/material.dart';

class NeonContainer extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NeonContainer({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              label: const Text(''),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
