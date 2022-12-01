
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.img, required this.name}) : super(key: key);
  final img;
  final name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20,),
        Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEEEEEE))
              ),
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(name, style: const TextStyle(fontSize: 12, color: Color(0xFF525251)),),
            )
          ],
        ),
      ],
    );
  }
}
