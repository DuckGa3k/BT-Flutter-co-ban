import 'package:flutter/material.dart';

void main() {
  runApp(const CoreWidgets());
}

class CoreWidgets extends StatelessWidget {
  const CoreWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Welcome to Flutter UI",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // tham khảo tạo Layout: https://docs.flutter.dev/ui/layout
        // tham khảo tạo PaddingL: https://www.geeksforgeeks.org/flutter/flutter-padding-widget/
        body: Column(
          children: <Widget>[
            // tham khảo thêm Icons: https://api.flutter.dev/flutter/material/Icons-class.html
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Icon(
                Icons.movie,
                size: 80,
                color: Color.fromARGB(255, 45, 136, 255),
              ),
            ),
            // tham khảo lấy ảnh từ mạng: https://docs.flutter.dev/cookbook/images/network-image
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              // cách làm bo góc: https://stackoverflow.com/questions/51513429/how-to-do-rounded-corners-image-in-flutter
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16.0),
                child: Image.network("https://cdn2.weeboo.vn/2026/05/GOODS-04797027.jpg"),
              )
            ),
            // tham khảo tạo Card và thêm ListTitle: https://api.flutter.dev/flutter/material/Card-class.html
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Card(
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.star),
                      title: Text("Movie Item"),
                      subtitle: Text(
                        "This is a sample ListTitle inside a Card",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
