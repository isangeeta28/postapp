import 'package:flutter/material.dart';

class ErrorDisplay extends StatelessWidget {
  final String message;
  final Function onRetry;

  ErrorDisplay({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(message, style: const TextStyle(color: Colors.red)),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => onRetry(),
          child: const Text('Retry'),
        ),
      ],
    );
  }
}