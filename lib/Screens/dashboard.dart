import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import"package:fithale/Screens/Home.dart";
import 'package:fithale/Screens/DietScreen.dart';
import 'package:fithale/Screens/bmi_input_page.dart';
import 'package:fithale/Screens/profile_screen.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    ProfileScreen(),
    InputPage(),
    ProfileButton(),
  ];

  void onTappedBar(int index) {
              setState(() {
                _currentIndex = index;
              });
          }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: new AppBar(
       backgroundColor: Colors.blue[900],
         iconTheme: new IconThemeData(color: Colors.amber),
       elevation: 0,
    //    titleSpacing: 0,
       ),     
        drawer: new Drawer(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                //  color: const Color(0xFFB3E5FC),
                //  color: const Color(0xFF40C4FF),
                  color:Colors.lightBlue[50],

                //color: const Color(0xFFFFFFFF),
                //color: const Color(0xFF00E5FF),
              //  color: const Color(0xFF212121),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      ListTile(
                        title: Text(
                          "UserName",
                          style: TextStyle(color: Colors.blue[900], fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          "www.username.com",
                          style: TextStyle(
                           // color: Color(0xFF1BB5FD),
                           color: Colors.blue[900],
                            fontSize: 18,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            //color: Colors.white,
                          ),
                          radius: 20,
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Colors.black.withOpacity(0.5),
                        indent: 15,
                        endIndent: 15,
                      ),
                      MenuItem(
                        icon: Icons.home,
                        title: "Home",
                //        onPressed: () {
                //    Navigator.of(context).pop();
                //  },
                       onTap: () { Navigator.of(context).pop();
              //            onIconPressed();
              //            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.DashboardClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.opacity,
                        title: "Water Intake",
                        onTap: () {
                   //       onIconPressed();
                   //       BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyAccountClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.airline_seat_flat,
                        title: "Sleep Tracker",
                        onTap: () {
                  //        onIconPressed();
                   //       BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyOrdersClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.calendar_today,
                        title: "Period Tracker",
                      ),
                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Colors.black.withOpacity(0.5),
                        indent: 15,
                        endIndent: 15,
                      ),
                      MenuItem(
                        icon: Icons.settings,
                        title: "Settings",
                      ),
                      MenuItem(
                        icon: Icons.exit_to_app,
                        title: "Logout",
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
          //          onIconPressed();
                  },
                  child: ClipPath(
          //          clipper: CustomMenuClipper(),
                    child: Container(
                      width: 10,
                      height: 110,
                     // color: Color(0xFF262AAA),
                  //   color: Color(0xFFB3E5FC),
                  color: const Color(0xFFFFFFFF),
                      alignment: Alignment.centerLeft,
                //      child: AnimatedIcon(
                //        progress: _animationController.view,
                //        icon: AnimatedIcons.menu_close,
               //         color: Color(0xFF1BB5FD),
              //          size: 25,
              //        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
     //     child: ListView(
     //       children: <Widget>[
     //         new UserAccountsDrawerHeader(
     //           accountName: new Text('ABC'), 
     //           accountEmail: new Text('abc@gmail.com')  
     //           ),        
      //      ],
      //    )
        ),

      body: _children[_currentIndex],
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        child: BottomNavigationBar(
          iconSize: 26,
          selectedIconTheme: IconThemeData(
            color: Colors.amber,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.lightBlue[50],
          ),
            onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
             BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.home),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "Home",
                style: const TextStyle(color: Colors.amber,fontSize: 10),
              ),
               backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Icon(Icons.fastfood),
              ),
              title: Text(
                "Meals",
                style: const TextStyle(color: Colors.amber,fontSize: 10),
              ),
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.favorite),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "BMI",
                style: const TextStyle(color: Colors.amber,fontSize: 10),
              ),
              backgroundColor: Colors.blue[900],
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.person),
                padding: const EdgeInsets.only(top: 4.0),
              ),
              title: Text(
                "Profile",
                style: const TextStyle(color: Colors.amber, fontSize: 10),
              ),
              backgroundColor: Colors.blue[900],
            ),
           
          ],
     /*     onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
          },*/
        ),
      ),


    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const StatCard({
    Key key,
    @required this.title,
    @required this.total,
    @required this.achieved,
    @required this.image,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).accentColor.withAlpha(100),
                  fontSize: 14,
                ),
              ),
              achieved < total
                  ? Image.asset(
                      'assets/img/down_orange.png',
                      width: 20,
                    )
                  : Image.asset(
                      'assets/img/up_red.png',
                      width: 20,
                    ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 8.0,
            percent: achieved / (total < achieved ? achieved : total),
            circularStrokeCap: CircularStrokeCap.round,
            center: image,
            progressColor: color,
            backgroundColor: Theme.of(context).accentColor.withAlpha(30),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).accentColor,
                ),
              ),
              TextSpan(
                text: ' / $total',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.blue[900],
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.blue[900]),
            )
          ],
        ),
      ),
    );
  }
}
