import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fithale/Screens/edit_details_button.dart';

class ProfileButton extends StatefulWidget {
//  final String userId;
//  ProfileButton({this.userId});
  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  var fullName = 'fullName';
//  var mobile = 9876543210;
  var emailId = 'example@123.com';

  Widget _userDetails() {
    return Card(
      color: Colors.lightBlue[50],
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipOval(
              child: Container(
                color: Colors.blue[900],
               // color: Theme.of(context).scaffoldBackgroundColor,
                height: 100,
                width: 100,
                child: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all( color: Colors.amber, width: 2),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 80,
                    //  color: Theme.of(context).primaryColor,
                    color: Colors.amber,
                  ),

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'User Details',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 0.8,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width: 50.0),
                ButtonTheme(
                  minWidth: 10.0,
                  child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // elevation: 4.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditDetailsButton()),
                        );
                      },
                      padding: EdgeInsets.all(0.0),
                      // color: Colors.white,
                      child: Icon(
                        Icons.edit,
                        size: 20.0,
                      )
                    // color: Colors.black,)
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(height: 4, color: Color(0xFF61A4F1),
              margin: const EdgeInsets.only(left: 0.0, right: 190.0),),
            SizedBox(height: 15.0),
            Text(
              'Name  : '+fullName+'\n\n'+'Email : '+emailId + '\n\n'+'Age   :'+'\n\n'+ 'Height    :'+'\n\n'+'Weight:  '+'\n\n'+'Gender: ',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 0.8,
                fontFamily: 'OpenSans',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _logoutBtn() {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue[50],
        elevation: 4.0,
        onPressed: () {
          Navigator.pop(context);
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
//        color: Colors.white,
        child: Text(
          'Logout',
          style: TextStyle(
//            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

//  Future<bool> _onBackPressed(){
//    return showDialog(
//      context: context,
//      builder: (context)=>AlertDialog(
//        title: Text("Do you really want to exit"),
//        actions: <Widget>[
//          FlatButton(
//            child: Text(
//              "No",
//              style: TextStyle(
//                fontSize: 18,
//              ),
//            ),
//            onPressed: ()=>Navigator.pop(context,false),
//          ),
//          FlatButton(
//            child: Text(
//              "Yes",
//              style: TextStyle(
//                fontSize: 18,
//              ),
//            ),
//            onPressed: ()=>Navigator.pop(context,true),
//          ),
//        ],
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E23),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0A0E23),
                      Color(0xFF0A0E33),
                      Color(0xFF0A0E43),
                      Color(0xFF0A0E23),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      _userDetails(),
//                      SizedBox(height: 10.0),
                      _logoutBtn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}