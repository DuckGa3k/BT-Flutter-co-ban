import 'package:flutter/material.dart';
import 'package:flutter_application_1/bai_tap/core_widgets.dart';
import 'package:flutter_application_1/pages/test.dart';

void main() {
  // runApp(const MyApp());
  runApp(const CoreWidgets()); // chạy bài tập 1
}

// Widget là các khối để xây dựng UI. Trong Flutter, mọi thứ trên màn hình đều là Widget. Có 2 loại Widget:
// StatelessWidget: cố định theo giá trị khởi tạo ban đầu (vd văn bản, Icon tĩnh)
// StatefulWidget: có thể thay đổi trạng thái và cập nhật lại giao diện khi người dùng tương tác hoặc có dữ liệu mới

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Material App là một Widget gốc định phong cách ứng dụng theo thiết kế của Google (thường dùng cho Android)
    // Cupertino App tương tự Material App nhưng thiết kế bởi Apple (thường dùng cho IOS)
    return MaterialApp(
      // Scaffold: một Widget cung cấp bố cục trực quan theo chuẩn Material App, giúp đặt các thành phần của ứng dụng vào đúng vị trí
      home: Scaffold(
        appBar: AppBar(
          title: Text("App title"),
          backgroundColor: const Color.fromARGB(255, 0, 248, 41),
        ),
        body: Center(
          child: Text(
            "Hello World!!!",
            textScaler: TextScaler.linear(2),
            style: TextStyle(color: const Color.fromARGB(255, 216, 10, 10)),
          ),
        ), 
        bottomNavigationBar: Text(
          "Bottom Nagivation Bar",
          textScaler: TextScaler.linear(2),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
