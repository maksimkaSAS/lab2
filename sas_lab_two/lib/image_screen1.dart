import 'package:flutter/material.dart';

class ImageScreen1 extends StatefulWidget {
  @override
  _ImageScreen1State createState() => _ImageScreen1State();
}

class _ImageScreen1State extends State<ImageScreen1> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://st4.depositphotos.com/14883968/21324/i/600/depositphotos_213244388-stock-photo-landscape-glacial-black-lake-mountains.jpg",
    "https://st.depositphotos.com/1695227/4813/i/600/depositphotos_48132517-stock-photo-deep-forest-stream-with-crystal.jpg",
    "https://st.depositphotos.com/1491329/3571/i/600/depositphotos_35710683-stock-photo-beautiful-scene-misty-old-forest.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Природа"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(imageUrls[currentIndex]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      if (currentIndex > 0) {
                        currentIndex--;
                      } else
                        (currentIndex = imageUrls.length - 1);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      if (currentIndex < imageUrls.length - 1) {
                        currentIndex++;
                      } else
                        (currentIndex = 0);
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text("На головну"),
            ),
          ],
        ),
      ),
    );
  }
}
