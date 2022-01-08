import 'package:flutter/material.dart';
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
          
          ShopItem(),
          //BadShopItem(),
          //NewShopItem()
        ],
      )
    );
  }
}

class ShopItem extends StatelessWidget
{
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
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SpinningWeel())),
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
                                  Text('Çarkıfelek', style: TextStyle(color: Colors.blueAccent)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Ketılım', style: TextStyle()),
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
                          child: Image.asset('assets/images/campaign/wheel.jpeg'),
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

class EventItem1 extends StatelessWidget
{
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
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SpinningWeel())),
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
                                  Text('Haftalık Yarışma', style: TextStyle(color: Colors.blueAccent)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Ketılım', style: TextStyle()),
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
                          child: Image.asset('assets/images/campaign/wheel.jpeg'),
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
class BadShopItem extends StatelessWidget
{
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
                      color: Colors.transparent,
                      child: Container
                      ( 
                        decoration: BoxDecoration
                        (
                          gradient: LinearGradient
                          (
                            colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                          )
                        ),
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
                                  Text('Nike Jordan III', style: TextStyle(color: Colors.white)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.amber, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Bought', style: TextStyle(color: Colors.white)),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                  ),
                                  Text('times for a profit of', style: TextStyle(color: Colors.white)),
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
                                        child: Text('\$ 363', style: TextStyle(color: Colors.white)),
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
                          child: Image.asset('assets/images/campaign/shoes1.png'),
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
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
            (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
              (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
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
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
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
                            Text('[New] Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                            Row
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                              ],
                            ),
                          ],
                        ),
                        /// Infos
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Text('Bought', style: TextStyle()),
                            Padding
                            (
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Text('times for a profit of', style: TextStyle()),
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
                                  child: Text('\$ 0', style: TextStyle(color: Colors.white)),
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
                      child: Image.asset('assets/images/campaign/shoes1.png'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}