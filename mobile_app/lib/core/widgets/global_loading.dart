import 'package:flutter/material.dart';

class GlobalLoading extends StatelessWidget {
  final String message;

  const GlobalLoading({
    super.key,
    this.message = "Loading...",
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black54,
      child: Center(
        child: Container(
          width: 260,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 28,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF001F3F),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFFD4AF37),
                ),
              ),
              const SizedBox(height: 24),
              const Icon(
                Icons.directions_car_filled_rounded,
                color: Color(0xFFD4AF37),
                size: 42,
              ),
              const SizedBox(height: 18),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
