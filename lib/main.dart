import 'dart:convert';
import 'package:flutter_skynetcode/registration_page.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

import 'components/squre_tile.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
       ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              //icon
              Icon(Icons.lock,size: 50,color: Colors.black,),

              //welcome back, you're been missed
              SizedBox(height: 35,),
              Text('Welcome back, you\'ve been missed!',style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 13),),

              //UserName
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),
                      ),

                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter User Name',
                      hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14)
                  ),
                ),
              ),

              //password textfield
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 14)
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text('Forgot Password ?',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 13),),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  //fetchUser();
                  // Navigator.push(context, MaterialPageRoute
                  //   (builder: (context)=>BottomNavMainPage(),
                  //   //(builder: (context)=>HomePage(),//HomePage
                  // ));
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text("Login",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15))),
                ),
              ),

              //continue with
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',style: TextStyle(color: Colors.grey.shade700),),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),

                  ],
                ),
              ),
              // google+ apple sign in button
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureTile(imagePath: 'assest/images/google.png',),
                    SizedBox(width: 20,),
                    SqureTile(imagePath: 'assest/images/mac1.png',)
                  ],
                ),

              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text('Not Register?'),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,MaterialPageRoute
                            (builder: (context)=>RegistrationPage(),
                          ));
                        },
                        child: Text('Register Here',
                          style: TextStyle(color: Colors.orange.shade800,fontWeight: FontWeight.bold,fontSize:15),)
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
  // Future<void> fetchUser()
  // async {
  //   const url='https://skysoftone.com/androidapi/actions.php?action=get_login_user';
  //   final uri=Uri.parse(url);
  //   http.get(uri);
  //   final respose=await http.get(uri);
  //   // if(http.Response.)
  //   final body=respose.body;
  //   final json=jsonDecode(body);
  //   setState((){
  //     users=json['data'];
  //     // userName=json['data']['email_id'];
  //   });
  //   print(users.toString());
  // }
}
