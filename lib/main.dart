import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('CV Wandi Syahid Abdullah'),
        actions: <Widget>[

        ],
      ),
      // body is the majority of the screen.
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200
              ),
              child: Text('7 Tahun sebagai technical support dan berpengalaman dalam setup server'),
            ),
            buildTitle('Skills'),
            SizedBox(height: 10.0,),
            buildSkillRow('Wordpress',0.75),
            SizedBox(height: 5.0,),
            buildSkillRow('Linux',0.90),
            SizedBox(height: 5.0,),
            buildSkillRow('Network',0.60),
            SizedBox(height: 5.0,),
            buildSkillRow('Flutter', 0.30),
            SizedBox(height: 16.0,),
            buildTitle('Experience'),

            buildExperience(company: "PT Qwords Company International", position: "Technical Support", duration: "2012-2017", ),
            buildExperience(company: "PT Jejaring Cepat Indonesia", position: "Technical Support", duration: "2017-2019", ),
            buildExperience(company: "PT Jejaring Cepat Indonesia", position: "Supervisor", duration: "2019-2020", ),
            buildExperience(company: "PT Qwords Company International", position: "Manager Technical Support", duration: "2020 - Current", ),

            buildTitle('Education'),
            buildExperience(company: "SMPN 2 Conggeang",position: "Siswa", duration: "2006 - 2009",),
            buildExperience(company: "SMKN 1 Sumedang",position: "Siswa", duration: "2009 - 2012",),
            buildExperience(company: "Universitas Esa Unggul",position: "Mahasiswa", duration: "2018 - Current",),
            buildTitle('Social Media'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 20.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.indigo,
                  icon: Icon(FontAwesomeIcons.facebookF),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.black,
                  icon: Icon(FontAwesomeIcons.githubAlt),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.blue,
                  icon: Icon(FontAwesomeIcons.twitter),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.grey,
                  icon: Icon(FontAwesomeIcons.medium),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.blue,
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
                IconButton(
                  iconSize: 18.0,
                  color: Colors.purple,
                  icon: Icon(FontAwesomeIcons.instagram),
                  onPressed: (){},
                ),
                SizedBox(width: 10.0,),
              ],
            ),

          ],
        ),
      ),
    );
  }

  ListTile buildExperience({String company, String position, String duration}) {
    return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20.0),
              child: Icon(FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
            ),
            title: Text(company, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,

            ),),
            subtitle: Text("$position($duration)"),
          );
  }

  Row buildSkillRow(String skill, double level) {
    return Row(
            children: <Widget>[
              SizedBox(width: 10.0,),
              Expanded(
                flex: 2,
                child: Text(skill.toUpperCase(), textAlign: TextAlign.right,),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                flex: 5,
                child: LinearProgressIndicator(
                  value: level,
                ),
              ),
              SizedBox(width: 10.0,),
            ],
          );
  }

  Padding buildTitle(String title) {
    return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(title.toUpperCase(), style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,

              ),),
            );
  }

  Row buildHeader() {
    return Row(children: <Widget>[
            SizedBox(width: 20.0,),
            Container(
              padding: const EdgeInsets.only(top: 20),
              width: 80.0,
              child: Image.asset('images/pic-profile.jpg')),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Wandi Syahid', style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),),
                Text('Manager of Technical Support'),

                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color:
                      Colors.grey,),
                    Text('Jakarta, Indonesia'),
                  ],
                ),
              ],
            )
          ],);
  }
}

