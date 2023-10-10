import 'package:flutter/material.dart';

class ImageScreen2 extends StatefulWidget {
  @override
  _ImageScreen2State createState() => _ImageScreen2State();
}

class _ImageScreen2State extends State<ImageScreen2> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://static8.depositphotos.com/1005629/806/i/450/depositphotos_8068134-stock-photo-pasta-with-olives-and-parsley.jpg",
    "https://st3.depositphotos.com/13324256/16360/i/600/depositphotos_163603730-stock-photo-italian-pizza.jpg",
    "https://st3.depositphotos.com/13349494/17505/i/600/depositphotos_175058098-stock-photo-pasta.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Їжа"),
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
