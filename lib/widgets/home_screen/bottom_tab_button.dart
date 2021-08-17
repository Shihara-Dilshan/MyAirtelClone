import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottmTabButton extends StatefulWidget {
  final String label;
  final Function callback;
  final int currentTab;
  final IconData icon;

  const BottmTabButton(this.label, this.callback, this.icon, this.currentTab);

  @override
  _BottmTabButtonState createState() => _BottmTabButtonState();
}

class _BottmTabButtonState extends State<BottmTabButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 1,
      onPressed: () {
        widget.callback();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon,
              size: 27,
              color: widget.currentTab == 0 ? Colors.red : Colors.grey),
          Text(
            widget.label,
            style: TextStyle(
                color: widget.currentTab == 0 ? Colors.red : Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
