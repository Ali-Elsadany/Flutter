import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/main.dart';


class SecondScreen extends StatelessWidget {
  String name;
  String title;
  String email;
  String phone;
   SecondScreen(this.name,this.title,this.email,this.phone,{super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            //centerTitle: true,
            title: Row(children: [Text('Business Card')])

        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*
                Text('Hello World',
                  style: TextStyle(fontSize: 35, color: Colors.blue)
              ),
                Text('Hello World',
                    style: TextStyle(fontSize: 35, color: Colors.blue)
                ),
              Icon(Icons.face,size: 55,color: Colors.blue,),
              */
                  /*
                Container(
                  width: 300,
                  height: 30,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Center(
                  child: Text('KING')
                  )

                 */
                  /*
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset('assets/images/Knight.jpg'),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.network('https://media.istockphoto.com/id/173838005/photo/black-pawn.jpg?s=612x612&w=0&k=20&c=5C-60Q9jSyakRXItxs47mrCkKKECKTcPiIGSD7RYC5U='),
                )

                 */

                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/Ali.png'),
                  ),
                  SizedBox(height: 30,),
                  Text('Ali Elsadany',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                  SizedBox(height: 0,),
                  Text('Android Developer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20),
                        Text('01147722385')
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(width: 20),
                        Text('alieelsadany@gmail.com')
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('Back'),),
                  SizedBox(height: 15,),
                  Text('Welcome $name',style: TextStyle(fontSize: 30),),
                  SizedBox(height: 15,),
                  Text(title,style: TextStyle(fontSize: 30),),
                  SizedBox(height: 15,),
                  Text('Email: $email',style: TextStyle(fontSize: 30),),
                  SizedBox(height: 15,),
                  Text('Phone: $phone',style: TextStyle(fontSize: 30),),
                ],
              ),
            )

        ),
      ),
    );
  }
}