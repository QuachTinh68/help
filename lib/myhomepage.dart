import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  VoidCallback? get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: myBody());
  }

  Widget myBody() {
    return Column(children: [block(), block(), block2(), block2()]);
  }

  Widget block2() {
    var tenLop = "XML và ứng dụng ";
    var malop = "2025-2026.1.TIN";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Column(
          children: [
            Column(children: [Text(tenLop), Text(malop)]),
            Text("55 học viên"),
          ],
        ),
        IconButton(onPressed: onPressed, icon: Icon(Icons.more_horiz)),
      ],
    );
  }

  Widget block() {
    var tenLop = "XML và ứng dụng ";
    var malop = "2025-2026.1.TIN";
    String src =
        "https://images.unsplash.com/photo-1559586616-361e18714958?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(image: NetworkImage(src), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [Text(tenLop), Text(malop)]),
                Text("55 học viên"),
              ],
            ),
            IconButton(onPressed: onPressed, icon: Icon(Icons.more_horiz)),
          ],
        ),
      ),
    );
  }

  Widget block3() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              Text("Call", style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.add_location,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              Text("Route", style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              Text("Share", style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }
}
