

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class ShopeView extends StatelessWidget {
  const ShopeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 75,),
          Text("Merhaba Hilmi",style: TextStyle(color: Colors.blueAccent),),
          Text("Harcayabileceğiniz 50 SP var",style: TextStyle(color: Colors.blueAccent)),
          Container(
            width: 200,
            child: SearchField(
              hint: "Enter product",
              suggestions: [
                '1GB Internet',
                'Cola',
                'Kitap',
                'Internet',
              ],
            ),
          ),
          SizedBox(height: 100,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: shopItem(
                    title: "2 GB",
                    fee: "150 SP",
                    imagePath: "assets/images/campaign/pd1.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: shopItem(
                    title: "1L İçecek",
                    fee: "150 SP",
                    imagePath: "assets/images/campaign/pd2.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: shopItem(
                    title: "101 Plus Çipleri",
                    fee: "400 SP",
                    imagePath: "assets/images/campaign/pd3.png"),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: shopItem(
                    title: "250 MB",
                    fee: "150 SP",
                    imagePath: "assets/images/campaign/pd4.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: shopItem(
                    title: "1 GB",
                    fee: "350 SP",
                    imagePath: "assets/images/campaign/pd5.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class shopItem extends StatelessWidget {
  late String title;
  late String fee;
  late String imagePath;

  shopItem(
      {required String title, required String fee, required String imagePath}) {
    this.imagePath = imagePath;
    this.title = title;
    this.fee = fee;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(this.imagePath),
          width: 100,
          height: 75,
        ),
        Text(this.title),
        Container(
          child: Text(this.fee),
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
