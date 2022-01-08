import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    height: MediaQuery.of(context).size.height / 3,
                    fit: BoxFit.cover,
                    image: const NetworkImage(
                        'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?size=626&ext=jpg'),
                  ),
                  Positioned(
                      bottom: -50.0,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 75,
                          backgroundImage: NetworkImage(
                              'https://teknocard.com/wp-content/uploads/2018/05/whatsapp-profil-resimleri-27.jpg'),
                        ),
                      ))
                ]),
            SizedBox(
              height: 45,
            ),
            ListTile(
              title: Center(child: Text(' Hilmi Cihan')),
              subtitle: Center(child: Text('Yarbay')),
            ),
            ListTile(
              title: Text('Hakkımda '),
              subtitle: Text('3 ay arka arkaya şampiyon oldum.'),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('Haftalık İlerleme '),
            ),
            RatingBar.builder(
              initialRating: 3,
              itemCount: 7,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                  case 1:
                    return Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: Colors.red,
                    );
                  case 2:
                    return Icon(
                      Icons.sentiment_neutral,
                      color: Colors.amber,
                    );
                  case 3:
                    return Icon(
                      Icons.sentiment_satisfied,
                      color: Colors.lightGreen,
                    );
                  case 4:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                  default:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                }
              },
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            ListTile(
              title: Text('Yıllık Ilerleme '),
            ),
            SizedBox(
              height: 15,
            ),
            RatingBar.builder(
              initialRating: 3,
              itemCount: 12,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                  case 1:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                  case 2:
                    return Icon(
                      Icons.sentiment_neutral,
                      color: Colors.amber,
                    );
                  case 3:
                    return Icon(
                      Icons.sentiment_satisfied,
                      color: Colors.lightGreen,
                    );
                  case 4:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                  default:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                }
              },
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text('Social'),
              subtitle: Row(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
