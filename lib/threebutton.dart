
import 'package:flutter/material.dart';
import 'package:meetup/mysp3link.dart';
import 'package:meetup/views/pages/home.page.dart';

class ThreeButton extends StatefulWidget {
  const ThreeButton( { Key key }) : super(key: key);

  @override
  _ThreeButtonState createState() => _ThreeButtonState();
}

class _ThreeButtonState extends State<ThreeButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Mysp3Web()));
                      },
                      child: Text('Social Network',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[900],
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                  ),
            ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                    child: Text('Video Confrence',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[900],
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                    child: Text('Video/Audio chat',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white,),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[900],
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                ),
          ],
        ),
      ),),
    );
  }
}
