import 'package:flutter/material.dart';

import '../../../domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message; 
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 20),
            child: Text(message.text,
                style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
