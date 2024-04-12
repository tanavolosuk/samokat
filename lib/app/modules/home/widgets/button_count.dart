import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum CounterButtonSize {
  small,
  medium,
  large,
}

extension _CounterButtonSizeExtension on CounterButtonSize {
  TextStyle get style {
    switch (this) {
      case CounterButtonSize.small:
        return Get.textTheme.bodyMedium!;
      case CounterButtonSize.medium:
        return Get.textTheme.bodyMedium!;
      case CounterButtonSize.large:
        return Get.textTheme.headlineSmall!;
    }
  }

  double get padding => 16.0 * (index + 1);
}

class CounterButton extends StatelessWidget {
  final int price;
  final int? count;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final CounterButtonSize size;

  const CounterButton({
    Key? key,
    this.price = 0,
    this.count = 0,
    this.onIncrement,
    this.onDecrement,
    this.size = CounterButtonSize.small,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (() {
      if (count == 0 || count == null) {
        return InkWell(
          onTap: onIncrement,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.padding / 2, vertical: size.padding / 3),
            decoration: BoxDecoration(
              color: Colors.red
                  .withOpacity(size == CounterButtonSize.small ? .0 : 1),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text(
              "$price руб.",
              style: size.style.copyWith(color: Colors.white),
            ),
          ),
        );
      } else {
        return Container(
          constraints: const BoxConstraints(minWidth: 80),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: size.padding / 2, vertical: size.padding / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: onDecrement,
                child: Icon(
                  Icons.remove,
                  size: size.style.fontSize! * 1.2,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        size.index > 0 ? 16.0 / 2 : 0),
                child: Text("$count",
                    style: size.style.copyWith(color: Colors.white)),
              ),
              InkWell(
                onTap: onIncrement,
                child: Icon(
                  Icons.add,
                  size: size.style.fontSize! * 1.5,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      }
    })();
  }
}
