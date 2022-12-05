
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key,}) : super(key: key);
  // final img;
  // final name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.hardEdge,
            children: [
              Container(
                height: 156,
                width: 161,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFEEEEEE))
                ),
              ),
              Positioned(
                top: -27,
                left: -18,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF6EDD2),
                  ),
                ),
              ),
              ],
            ),
        const SizedBox(width: 10,)
      ],
    );
  }
}
