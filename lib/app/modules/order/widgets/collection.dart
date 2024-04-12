import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

collection() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Комментарий к сборке заказа',
              style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color.fromRGBO(166, 166, 166, 1),
              size: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 1,
        ),
        const Divider(
          color: Color.fromRGBO(166, 166, 166, 1),
          thickness: 0.2,
        ),
        const SizedBox(
          height: 1,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Промокод',
              style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color.fromRGBO(166, 166, 166, 1),
              size: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 1,
        ),
        const Divider(
          color: Color.fromRGBO(166, 166, 166, 1),
          thickness: 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'СберСпасибо',
                          style: TextStyle(
                              color: Color.fromRGBO(64, 64, 64, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 1,),
                        Image.asset('assets/images/sbersps.png', width: 11, height: 11),
                      ],
                    ),
                    Text('У вас 286 бонусов - спишем всё',
                        style: TextStyle(
                            color: Color.fromRGBO(166, 166, 166, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start),
                  ],
                ),
              ],
            ),
            ToggleSwitch(
              minWidth: 15.0,
              minHeight: 17,
              cornerRadius: 20.0,
              activeBgColors: const [
                [Colors.white],
                [Colors.white]
              ],
              activeFgColor: const Color.fromRGBO(255, 51, 95, 1),
              inactiveBgColor: const Color.fromRGBO(158, 157, 157, 1),
              //inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              radiusStyle: true,
            )
          ],
        ),
        const Divider(
          color: Color.fromRGBO(166, 166, 166, 1),
          thickness: 0.2,
        ),
        const SizedBox(
          height: 1,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Оплата SberPay',
                  style: TextStyle(
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Color.fromRGBO(64, 64, 64, 1),
                ),
                Text(
                  '1689',
                  style: TextStyle(
                      color: Color.fromRGBO(64, 64, 64, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color.fromRGBO(166, 166, 166, 1),
              size: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 1,
        ),
        const Divider(
          color: Color.fromRGBO(166, 166, 166, 1),
          thickness: 0.2,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    ),
  );
}
