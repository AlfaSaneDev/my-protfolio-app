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

            SizedBox(height: 20,),
            Text(
              "Contact Me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
              
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green.shade100,
                  child: Icon(Icons.call, size: 30),
                ),
                SizedBox(width: 20),

                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red.shade100,
                  child: Icon(Icons.email, size: 30,),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(Icons.facebook, size: 30,),
                )
              ],
            )

          ],
        ),
      )
    );
  }
}