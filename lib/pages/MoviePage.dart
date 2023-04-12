import 'package:flutter/material.dart';
import 'package:movie_app/widgets/RecommendWidget.dart';


class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/coverjpg",
              height: 20,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(onTap: () {
                          Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        InkWell(onTap: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 8,
                            )
                          ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/1.jpeg",
                            height: 250,
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50, top: 70),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                                ),
                              ],
                           ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: 30),
                  MoviePageButtons(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Suzume",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text("Perjalanan Suzume dimulai di sebuah kota yang tenang di Kyushu (terletak di Barat daya Jepang) ketika dia bertemu dengan seorang pria muda yang mengatakan kepadanya, 'Saya sedang mencari pintu.' Apa yang Suzume temukan adalah satu pintu lapuk yang berdiri tegak di tengah reruntuhan seolah terlindung dari malapetaka apa pun yang melanda. Tampaknya ditarik oleh kekuatannya, Suzume meraih kenopnya... Pintu-pintu itu mulai terbuka satu demi satu di seluruh Jepang, melepaskan kehancuran pada siapa pun yang berada di dekatnya. Suzume harus menutup portal ini untuk mencegah bencana lebih lanjut",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 10),
              RecommendWidget(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
