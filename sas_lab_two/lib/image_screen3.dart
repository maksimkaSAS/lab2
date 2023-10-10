import 'package:flutter/material.dart';

class ImageScreen3 extends StatefulWidget {
  @override
  _ImageScreen3State createState() => _ImageScreen3State();
}

class _ImageScreen3State extends State<ImageScreen3> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://st.depositphotos.com/1030334/1649/i/600/depositphotos_16495951-stock-photo-sparrows.jpg",
    "https://st.depositphotos.com/2131901/2574/i/600/depositphotos_25747851-stock-photo-european-robin.jpg",
    "https://st2.depositphotos.com/7402484/10871/i/600/depositphotos_108716608-stock-photo-northern-gannets-with-evening-sun.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Птахи"),
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
