import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown(List<String> options, {super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: <String>[
        'Option 1',
        'Option 2',
        'Option 3',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          child: Text(value),
          value: value,
        );
      }).toList(),
    );
  }
}
