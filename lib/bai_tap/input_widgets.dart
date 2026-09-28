import 'dart:ffi' hide Size;

import 'package:flutter/material.dart';

void main() {}

class InputWidgets extends StatelessWidget {
  const InputWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InputControlsDemo());
  }
}

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});
  @override
  State<InputControlsDemo> createState() => _InputControlsState();
}

enum Genre { action, comedy }

class ConvertToName {
  String convert(Genre? value) {
    if (value == null) {
      return "None";
    }
    String text = value.toString(); // chuyển thành chuỗi, có dạng Genre.action
    String target = ".";
    int index = text.indexOf(target);
    String result = text.substring(index + 1); // chỉ lấy kết quả sau Genre.
    return result[0].toUpperCase() + result.substring(1); // in hoa chữ đầu
  }
}

class _InputControlsState extends State<InputControlsDemo> {
  double _currentSliderValue = 50;
  bool isActive = false;
  Genre? selectedGenre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(20, 60, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 40,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rating (Slider)",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // tham khảo tạo Slider: https://api.flutter.dev/flutter/material/Slider-class.html
                Slider(
                  value: _currentSliderValue,
                  max: 100,
                  onChanged: (double value) => {
                    setState(() {
                      _currentSliderValue = value;
                    }),
                  },
                ),
                Text("Current value: ${_currentSliderValue.ceil()}"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Active (Switch)",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SwitchListTile(
                  value: isActive,
                  title: Text("Is movie active?"),
                  onChanged: (bool vale) => {
                    setState(() {
                      isActive = !isActive;
                    }),
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Genre (RadioListTile)",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // tham khảo tạo Radio group: https://api.flutter.dev/flutter/material/RadioListTile-class.html
                RadioGroup(
                  groupValue: selectedGenre,
                  onChanged: (Genre? value) => {
                    setState(() {
                      selectedGenre = value;
                    }),
                  },
                  child: const Column(
                    children: [
                      RadioListTile(value: Genre.action, title: Text("Action")),
                      RadioListTile(value: Genre.comedy, title: Text("Comedy")),
                    ],
                  ),
                ),
                Text(
                  "Selected genre: ${ConvertToName().convert(selectedGenre)}",
                ),
              ],
            ),
            // tham khảo Date Time Picker: https://api.flutter.dev/flutter/material/showDatePicker.html
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(9999,30)),
              onPressed: () => {
                showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                ),
              },
              child: Text("Open Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
