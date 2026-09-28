import 'package:flutter/material.dart';

class LayoutBasics extends StatelessWidget {
  LayoutBasics({super.key});
  final List<String> leadings = ["A", "I", "I", "J"];
  final List<String> titles = ["Avatar", "Inception", "Interstellar", "Joker"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(10, 60, 10, 10),
          child: Column(
            spacing: 8,
            children: [
              Text(
                "Now Playing",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                itemCount: leadings.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40, // bán kính hình tròn, tăng để làm nó rộng hơn
                          backgroundColor: Color.fromARGB(158, 0, 204, 255),
                          child: Text(
                            leadings[index],
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        title: Text(
                          titles[index],
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Sample description"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
