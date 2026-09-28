import 'package:flutter/material.dart';

void main() {}

class DarkTheme extends StatelessWidget {
  const DarkTheme({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DarkThemeDemo());
  }
}

class DarkThemeDemo extends StatefulWidget {
  const DarkThemeDemo({super.key});
  @override
  State<DarkThemeDemo> createState() => DarkThemeState();
}

Color changeTextColor(bool isActive) {
  if (isActive) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}
Color changeBackgroundColor(bool isActive) {
  if (!isActive) {
    return const Color.fromARGB(255, 227, 227, 227);
  } else {
    return const Color.fromARGB(255, 55, 55, 55);
  }
}

class DarkThemeState extends State<DarkThemeDemo> {
  bool darkThemeActived = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: changeBackgroundColor(darkThemeActived),
        appBar: AppBar(backgroundColor: changeBackgroundColor(darkThemeActived),),
        body: Column(
          spacing: 100,
          children: [
            Align(
              alignment: AlignmentGeometry.topRight,
              child: SwitchListTile(
                value: darkThemeActived,
                title: Text("Dark", textAlign: TextAlign.end, style: TextStyle(color: changeTextColor(darkThemeActived)),),
                onChanged: (bool value) {
                  setState(() {
                    darkThemeActived = !darkThemeActived;
                  });
                },
              ),
            ),
            Text(
              "This is a simple screen with theme toggle",
              style: TextStyle(
                fontSize: 18,
                color: changeTextColor(darkThemeActived),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
