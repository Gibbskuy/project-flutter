import 'package:flutter/material.dart';

import 'detail_flora_screen.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "Kepuh (Sterula foetida)",
      "image": "assets/images/kepuh.jpeg",
      "gallery": [
        "assets/images/kepuh1.jpeg",
        "assets/images/kepuh2.jpg",
      ],
      "desc":
          "Kepuh (Sterculia foetida L.) merupakan spesies tumbuhan yang berasal family Malvaceae, termasuk tumbuhan tropis yang memiliki perawakan pohon besar. Persebarannya paling luas ditemukan di Asia tenggara, khususnya hutan tropis dan sub tropis"
    },
    {
      "nama": "White Plumeria",
      "image": "assets/images/plumeria4.jpg",
      "gallery": [
        "assets/images/plumeria1.jpg",
        "assets/images/plumeria2.jpg",
      ],
      "desc":
          "Kamboja putih merupakan tanaman yang berwujud daun tunggal, duduk berkarang dan bergerombol di ujung tangkai. Tangkai daunnya panjang dan helaiannya berbentuk lanset, strukturnya kaku seperti kulit"
    },
    {
      "nama": "Roses Flower Purple",
      "image": "assets/images/bunga4.jpg",
      "gallery": [
        "assets/images/bunga1.jpg",
        "assets/images/bunga2.jpg",
      ],
      "desc":
          "Mawar merupakan tanaman bunga hias berupa herba dengan batang berduri. Mawar yang dikenal nama bunga ros atau Ratu Bunga merupakan simbol atau lambang kehidupan religi dalam peradaban manusia. Mawar berasal dari dataran Cina, Timur Tengah dan Eropa Timur"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flora'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pexels-rok-romih-1746122-3312664 (1).jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: floraData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFloraScreen(
                        nama: floraData[index]["nama"],
                        image: floraData[index]["image"],
                        gallery: floraData[index]["gallery"],
                        desc: floraData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${floraData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${floraData[index]["nama"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
