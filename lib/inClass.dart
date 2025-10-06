import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: myBody()),
    );
  }

  Widget myBody() {
    // thay the cho column hoac row
    return ListView(
      //xac dinh column
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (index) => itemClassroom()),
    );
  }
  Widget  itemClassroom(){
    return Container(
      margin: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.teal,
        ///lam do bong 
        ///thay doi background (anh or random color)
        /// day iconbutton lem goc phai
        /// 
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10)
      ),
      height: 100,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         leftChild(),
          rightChild()
        ],
      ),
    );
}
  Widget rightChild(){
      return IconButton(onPressed: () {
        print("Hello");
      }, icon: Icon(Icons.more_horiz));
  }
  Widget leftChild(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mobile "),
            Text("Giang vien: AV")
          ],
        ),
        Text("59 sinh vien")
      ],
    );
  }
}
