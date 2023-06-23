import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> list = <String>[
  '\$ 1.00',
  '\$ 20.00',
  '\$ 300.00',
  '\$ 1000.00',
];

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String dropdownvalue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      underline: const SizedBox(),

      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownvalue = value!;
        });
      },

      // Array list of items
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      dropdownColor: Colors.grey,
    );
  }
}
