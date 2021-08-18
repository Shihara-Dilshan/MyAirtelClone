import 'package:flutter/material.dart';

class IconWithBadge extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback? onTap;
  final int? notificationCount;

  const IconWithBadge({
    this.onTap,
    required this.text,
    required this.iconData,
    this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 72,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconData,
                  size: 30,
                ),
              ],
            ),
            Positioned(
              top: 10,
              right: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                alignment: Alignment.center,
                child: Text('$notificationCount'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
