import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

header() {
  return Container(
    decoration: const BoxDecoration(
      color: Color.fromRGBO(242, 242, 242, 1),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Делегатская, 35',
                style: TextStyle(
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                textAlign: TextAlign.start,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromRGBO(
                  64,
                  64,
                  64,
                  1,
                ),
                size: 16,
              ),
            ],
          ),
          const Text(
            'Доставка 15 минут',
            style: TextStyle(
                color: Color.fromRGBO(166, 166, 166, 1),
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 4,
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
                'Комментарий к адресу',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Оставить у двери',
                style: TextStyle(
                    color: Color.fromRGBO(64, 64, 64, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
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
          const SizedBox(
            height: 1,
          ),
        ],
      ),
    ),
  );
}
