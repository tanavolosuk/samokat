import 'package:flutter/material.dart';

search() {
  return SizedBox(
    height: 40,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(242, 242, 242, 1),
          prefixIcon: Icon(
            Icons.search,
            size: 18,
            color: Color.fromRGBO(64, 64, 64, 1),
          ),
          hintText: 'Искать в Самокате',
          hintStyle: TextStyle(
            fontSize: 13,
            color: Color.fromRGBO(166, 166, 166, 1),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(198, 194, 194, 1),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.percent_rounded,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Скидки',
                    style: TextStyle(
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(5.0),
        ),
        textAlignVertical: TextAlignVertical.top,
      ),
    ),
  );
}
