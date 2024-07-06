import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_fauna_screen.dart';

import 'detail_fauna_screen.dart';

class ListFaunaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Penyu",
      "image": "assets/images/penyu.jpg",
      "gallery": [
        "assets/images/penyu1.jpg",
        "assets/images/penyu2.jpg",
      ],
      "desc":
          "Penyu adalah binatang reptilian bercangkang. Cangkang atau tempurung berfungsi sebagai alat pertahanan diri atau pelindung,untuk menyembunyikan kaki dan kepalanya agar terhindar dari serangan predator"
    },
    {
      "nama": "Bunglon (Calotes)",
      "image": "assets/images/bunglon2.jpg",
      "gallery": [
        "assets/images/bunglon.jpg",
        "assets/images/bunglon1.jpg",
      ],
      "desc":
          "Bunglon (Calotes) adalah sebutan khusus untuk beraneka jenis kadal/bengkarung yang memiliki kemampuan mengubah warna kulitnya. Secara umum, istilah digunakan untuk menyebut kadal-kadal dari suku Iguania termasuk Iguanidae"
    },
    {
      "nama": "Kupu-kupu",
      "image": "assets/images/kupu1.jpg",
      "gallery": [
        "assets/images/=kupu.jpg",
        "assets/images/kupu2.jpg",
      ],
      "desc":
          "Kupu-kupu adalah serangga yang tergolong dalam ordo lepidoptera atau serangga bersayap sisik (lepis, sisik dan pteron, sayap)"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fauna'),
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
            itemCount: faunaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFaunaScreen(
                        nama: faunaData[index]["nama"],
                        image: faunaData[index]["image"],
                        gallery: faunaData[index]["gallery"],
                        desc: faunaData[index]["desc"],
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
                      image: AssetImage("${faunaData[index]["image"]}"),
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
                      "${faunaData[index]["nama"]}",
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
