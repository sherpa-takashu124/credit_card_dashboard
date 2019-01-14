import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card_dashboard/customcliper.dart';

GlobalKey appbarKey = GlobalKey();
GlobalKey bottomNavBarKey = GlobalKey();
void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
   /* getHeight(){
      final RenderBox renderBoxRed = appbarKey.currentContext.findRenderObject();
      final sizeRed = renderBoxRed.size.height;
      print("SIZE of Red: $sizeRed");

    }*/

    return Scaffold(
appBar: AppBar(
  key: appbarKey,
  backgroundColor: Colors.indigo,
  elevation: 0.0,
  leading: new Icon(Icons.menu),
  actions: <Widget>[
    Container(
      width: 40.0,
        height: 40.0,
        child: IconButton(
            icon: new Icon(Icons.add, color: Colors.white70,),
            onPressed: null
        ) ,
        decoration: BoxDecoration(
        color: Colors.amber,
  shape: BoxShape.circle
)
      ),
    
    Padding(padding: EdgeInsets.all(16.0),)
  ],
),

bottomNavigationBar: BottomNavigationBar(
  key: bottomNavBarKey,
  type: BottomNavigationBarType.fixed,
items: [
  BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.black,),
  title: Text('DASHBOARD', style: TextStyle(
    color: Colors.black,
    fontSize: 9.0
  ),)
  ),

  BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),
      title: Text('SEARCH', style: TextStyle(
          color: Colors.black,
          fontSize: 9.0
      ),)
  ),
  BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),
      title: Text('PROFILE', style: TextStyle(
          color: Colors.black,
          fontSize: 9.0
      ),)
  ),
  BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.black,),
      title: Text('NOTIFICATIONS', style: TextStyle(
          color: Colors.black,
          fontSize: 9.0
      ),)
  ),

],
),

backgroundColor: Colors.amber,
        body: Column(

        children: <Widget>[
HeaderDesign(),

        ],

      ),

   );
  }
}

class HeaderDesign extends StatefulWidget {

  @override
  HeaderPart createState() => HeaderPart();


}
class HeaderPart extends State<HeaderDesign> {



@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      
      Expanded(
        child: Stack(
        children: <Widget>[
    
ClipPath(
clipper:CustomShapeclipper(),
  child: Container(
    height: 550.00,
    color: Colors.indigo,

  ),

),

 Positioned(
   top: 100,
   width: MediaQuery.of(context).size.width,
   child:  Container(
     child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
  DefaultTabController(
        length: 3,
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(25.0)
    
    ),
    child: TabBar(
          indicator: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(25.0)
          ),
          labelColor: Colors.black,

          unselectedLabelColor: Colors.white,
          isScrollable: true,
          indicatorColor: Colors.white10,
          tabs: [
            Tab(text: 'DAILY',),
            Tab(text: 'WEEKLY',),
            Tab(text: 'MONTHLY',)
          ] ),
  )
  ),
  Padding(padding: EdgeInsets.all(15.0))  ,
           Text(
             'Total Spending',
             style: new TextStyle(
                 color: Colors.white70,
                 fontSize: 30.0
             ),
           ),
           Padding(padding: EdgeInsets.all(10.0))
           ,
           Text(
             " \$ 820.00",
             style: new TextStyle(
                 color: Colors.white,
                 fontSize: 30.0
             ),
           )
         ],
     ),
   ),
 ),
  Positioned(
    bottom: 10.0,

  width: MediaQuery.of(context).size.width,
  child: Container(
  margin: EdgeInsets.symmetric(vertical: 20.0),
  height: 220.0,
  child: ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
        ),
        width: 160.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(color: Colors.grey,
                shape: BoxShape.circle
              ) ,
  child: Image.network('http://www.stickpng.com/assets/images/580b57fcd9996e24bc43c53f.png',
  height: 55.0,
  width: 55.0,),
  ),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('Uber Ride',
            style: TextStyle(
                color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,

            ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('JUL 06, 2018',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 10.0,
                fontWeight: FontWeight.normal,

              ),),
            Text('_',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('\$ 65.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),

  Padding(padding: EdgeInsets.all(5.0)),

            Container(
padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.green, width: 2.0),
              ),
              child:  Text('Approved',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,

                )

                ,),
            )


          ],
        ),
    ),
    Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
        ),
        width: 160.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(color: Colors.grey,
                  shape: BoxShape.circle
              ) ,
              child: Image.network('https://www.fnasafety.com/wp-content/uploads/2018/10/Starbucks-Logo-PNG-Image.png',
                height: 55.0,
                width: 55.0,),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('Starbucks',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('JUL 06, 2018',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 10.0,
                fontWeight: FontWeight.normal,

              ),),
            Text('_',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('\$ 65.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),

            Padding(padding: EdgeInsets.all(5.0)),

            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.green, width: 2.0),
              ),
              child:  Text('Approved',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,

                )

                ,),
            )


          ],
        ),
    ),
    Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
        ),
        width: 160.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(color: Colors.grey,
                  shape: BoxShape.circle
              ) ,
              child: Image.network('http://www.pngpix.com/wp-content/uploads/2016/07/PNGPIX-COM-Best-Buy-Logo-PNG-Transparent-500x366.png',
                height: 55.0,
                width: 55.0,),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('Uber Ride',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('JUL 06, 2018',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 10.0,
                fontWeight: FontWeight.normal,

              ),),
            Text('_',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('\$ 65.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),

            Padding(padding: EdgeInsets.all(5.0)),

            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.green, width: 2.0),
              ),
              child:  Text('Approved',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,

                )

                ,),
            )


          ],
        ),
    ),
    Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
        ),
        width: 160.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(color: Colors.grey,
                  shape: BoxShape.circle
              ) ,
              child: Image.network('http://www.stickpng.com/assets/images/580b57fcd9996e24bc43c53f.png',
                height: 55.0,
                width: 55.0,),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('Uber Ride',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('JUL 06, 2018',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 10.0,
                fontWeight: FontWeight.normal,

              ),),
            Text('_',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),
            Padding(padding: EdgeInsets.all(5.0)),
            Text('\$ 65.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,

              ),),

            Padding(padding: EdgeInsets.all(5.0)),

            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.green, width: 2.0),
              ),
              child:  Text('Approved',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,

                )

                ,),
            )


          ],
        ),
    )
  ],
  ),
  )
  ),

        ]


    ),
      );
  }
}