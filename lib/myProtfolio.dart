import 'package:flutter/material.dart';

class MyProtfolio extends StatelessWidget {
  const MyProtfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Alfa Sane's Protfolio", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo[600],
        centerTitle: true,
      ),

      body:SingleChildScrollView(        
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/photo.jpg'),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Alfa Sane",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 22, 
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "I am a passionate learner studying at Gopalganj Textile Engineering College. I love coding and currently learning Flutter to build amazing mobile apps.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                    ),
                  )

                ],
              ),
            ),
            // 3. My Skills

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Skills",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
              
                  ),
                  SizedBox(height: 15),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildSkillChip("Flutter"),
                      _buildSkillChip("Dart"),
                      _buildSkillChip("GitHub"),
                      _buildSkillChip("App Development"),
                      _buildSkillChip("Problem Solving")
                    ],
                  )
                ],
              ),
            ),

            // 4. Contact Me

            Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Text("Contact Me", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildContactButton(Icons.email, Colors.red, "Email"),
                      _buildContactButton(Icons.call, Colors.green, "Call"),
                      _buildContactButton(Icons.link, Colors.blue, "LinkedIn")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      )
    );
  }
}

Widget _buildSkillChip(String label) {
  return Chip(
    label: Text(label, style: TextStyle(color: Colors.white),),
    backgroundColor: Colors.indigoAccent,
    padding: EdgeInsets.all(8),
    );
}

Widget _buildContactButton(IconData icon, Color color, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: color.withOpacity(0.1),
        child: Icon(icon, color: color, size: 30,),
      ),

      SizedBox(height: 5),
      Text(text, style: TextStyle(color: color, fontWeight: FontWeight.bold),)
    ],
  );
}