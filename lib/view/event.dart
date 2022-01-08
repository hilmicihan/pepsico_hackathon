import 'package:flutter/material.dart';
import 'package:pepsico_hackathon/view/quiz/screens/quiz/quiz_screen.dart';
import 'package:pepsico_hackathon/view/spinning_wheel.dart';
import 'item_reviews_page.dart';

class EventsFeed extends StatefulWidget
{
  @override
  _EventsFeedState createState() => _EventsFeedState();
}

class _EventsFeedState extends State<EventsFeed>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Colors.transparent,
       
        title: Text('Etkinlikler', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        
      ),
      body: ListView
      (
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          
          EventItem(onTapWidget: SpinningWeel(),title:"çarkıfelek",puan:"4.6",imagePath: "assets/images/campaign/wheel.jpeg",),
          EventItem(onTapWidget: QuizScreen(),title:"Bilgi Yarışması",puan:"4.4",imagePath: "assets/images/campaign/quiz.jpeg",),
          EventItem(onTapWidget: QuizScreen(),title:"Arkadaşını Davet Et ",puan:"4.2",imagePath: "assets/images/campaign/friend2.jpg",)
          //BadShopItem(),
          //NewShopItem()
        ],
      )
    );
  }
}

class EventItem extends StatelessWidget
{
  late Widget onTapWidget;
  late String title;
  late String puan;
  late String imagePath;

  EventItem({Key? key,  required Widget onTapWidget, required String title, required String puan,required String imagePath })
  {
    this.onTapWidget = onTapWidget;
    this.title = title;
    this.puan = puan;
    this.imagePath = imagePath;
  } 
  

  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
      (
        children: <Widget>
        [
          /// Item card
          Align
          (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
            (
              size: Size.fromHeight(172.0),
              child: Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  Container
                  (
                    margin: EdgeInsets.only(top: 24.0),
                    child: Material
                    (
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shadowColor: Color(0x802196F3),
                      color: Colors.white,
                      child: InkWell
                      (
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => this.onTapWidget)),
                        child: Padding
                        (
                          padding: EdgeInsets.all(24.0),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  Text(this.title, style: TextStyle(color: Colors.blueAccent)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text(this.puan, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              if(puan!="4.2")
                               Text('Kalan Hakkınız : 1', style: TextStyle(color: Colors.green),),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                 
                                  Text('Ketılım'),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                  ),
                                  Text('kere gerçekleşti ', style: TextStyle()),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Material
                                    (
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: Padding
                                      (
                                        padding: EdgeInsets.all(4.0),
                                        child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Item image
                  Align
                  (
                    alignment: Alignment.topRight,
                    child: Padding
                    (
                      padding: EdgeInsets.only(right: 16.0),
                      child: SizedBox.fromSize
                      (
                        size: Size.fromRadius(54.0),
                        child: Material
                        (
                          elevation: 20.0,
                          shadowColor: Color(0x802196F3),
                          shape: CircleBorder(),
                          child: Image.asset(this.imagePath),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          Padding
          (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
            (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
              (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
              (
                decoration: BoxDecoration
                (
                  gradient: LinearGradient
                  (
                    colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight
                  )
                ),
                child: Container
                (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                  (
                    leading: CircleAvatar
                    (
                      backgroundColor: Colors.purple,
                      child: Text('AI'),
                    ),
                    title: Text('Oguz ★★★★★', style: TextStyle()),
                    subtitle: Text('Çarkıfelekten iphone kazandım mükemmel bir uygulama', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
