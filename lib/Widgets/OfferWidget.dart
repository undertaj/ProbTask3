
import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 304,
              height: 354,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFEEEEEE))
              ),
              child: Column(
                children: [
                  SizedBox(height: 200,),
                  const Text("A rewarding Celebration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  const Text("Win rewards from Citizen,peter england, and More", style: TextStyle( fontSize: 14),),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFADB4E2))
                        ),
                          child: const Text("Explore Rewards +", style: TextStyle(color: Color(0xFF303F9F)),)
                      )
                  )
                ]
              ),
            ),
            Container(
              height: 180,
              width: 304,
              decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(16),
              ),
            )
          ]
        ),
        SizedBox(width: 15,)
      ],
    );
  }
}
