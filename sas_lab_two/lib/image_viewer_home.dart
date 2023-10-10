import 'package:flutter/material.dart';
import 'image_screen1.dart';
import 'image_screen2.dart';
import 'image_screen3.dart';

class ImageViewerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Переглядач картинок"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Переглядач картинок", style: TextStyle(fontSize: 20)),
              Image.network(
                "https://st.depositphotos.com/1899425/1623/i/600/depositphotos_16232649-stock-photo-moraine-lake-sunrise-colorful-landscape.jpg",
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen1()),
                ),
                child: Text("Природа"),
              ),
              Image.network(
                "https://static6.depositphotos.com/1014511/575/i/600/depositphotos_5755752-stock-photo-healthy-eating.jpg",
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen2()),
                ),
                child: Text("Їжа"),
              ),
              Image.network(
                "https://static8.depositphotos.com/1485975/1015/i/600/depositphotos_10159873-stock-photo-colorful-superb-starling-on-the.jpg",
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen3()),
                ),
                child: Text("Птахи"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
