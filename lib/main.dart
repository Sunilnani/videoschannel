import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> image=["img/Screenshot (104).png","img/girls.jpg","img/Screenshot (104).png","img/girls.jpg"];
  List<String> name=["Sunder pichai","Girls love beard guys","Sunder pichai","Girls love beard guys"];
  List<String> contents=["friend tech","pavan Ramagiri","friend tech","pavan Ramagiri"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset("img/steves1.jpg",),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:180.0,left: 325),
                        child: Text("2:40",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("img/universal.jpg"),
                          radius: 20,
                          backgroundColor: Colors.black87,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Steve Jobs-Official Trailer (HD)",style: TextStyle(color: Color(0xFF282828),fontSize: 15,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text("Universal Pictures. 1.5 crore views . 5 years ago",style: TextStyle(color: Color(0xFF6d6d6d),fontSize: 12),),

                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset("img/utube.jpeg",height: 40,),
                      SizedBox(width: 5,),
                      Text("Shorts",style: TextStyle(color: Color(0xFF4f4f4f),fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: name.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (content,index){
                        return Channel(
                          image: image[index],
                          name: name[index],
                          content:contents[index],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

class Channel extends StatelessWidget {
  const Channel({
    this.image,
    this.name,
    this.content

  }) ;
  final String image;
  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            child: Image.asset(image,height: 220,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:175.0,left: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(height: 3,),
                  Text(content,style: TextStyle(color: Colors.white,fontSize: 12),)

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:120.0,top: 10),
            child: Icon(Icons.more_vert,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
