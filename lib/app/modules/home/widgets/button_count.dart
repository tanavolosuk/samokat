import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final int value;
  final VoidCallback onPressedMinus;
  final VoidCallback onPressedPlus;

  const CustomButton({
    Key? key,
    required this.value,
    required this.onPressedMinus,
    required this.onPressedPlus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: 80,
      constraints: const BoxConstraints(
        maxWidth: 80.0,
        maxHeight: 25.0,
        minWidth: 80.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 51, 95, 1),
        borderRadius: BorderRadius.circular(25.0),
      ),
      //padding: EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 18,
              ),
              onTap: onPressedMinus,
            ),
            Text(
              '$value',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 18,
              ),
              onTap: onPressedPlus,
            ),
          ],
        ),
      ),
    );
  }
}
