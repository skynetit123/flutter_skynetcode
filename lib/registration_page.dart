import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'main.dart';
import 'model/dataModel.dart';
import 'dart:convert';

class RegistrationPage extends StatelessWidget
{
  List<Data> dataList=[];
  var txtUserName=TextEditingController();
  var txtEmailID=TextEditingController();
  var txtPassword=TextEditingController();

  var scontext;
  @override
  Widget build(BuildContext context) {
    scontext=context;

   return Scaffold(
       backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       title: Text('User Registration',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold,),),
       elevation: 0,
       leading: IconButton(
         onPressed: (){
           Navigator.pop(context);
         },
         icon: Icon(Icons.arrow_back_ios_rounded,
           color: Colors.black,),
       ),
     ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //UserName
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: txtUserName,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter User Name',
                        hintStyle: TextStyle(color: Colors.grey.shade400)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: txtEmailID,

                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter EmailID',
                        hintStyle: TextStyle(color: Colors.grey.shade400)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),borderRadius: BorderRadius.circular(10),
                        ),

                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Colors.grey.shade400)
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: txtPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300,width: 1.7,),borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade500,width: 1.7),borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey.shade400)
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                   // RegisterUser();
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade800,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                        child: Text("Register",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15))),
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
   );
  }
  Future<List<Data>> RegisterUser()async{
    try
    {
      String userName=txtUserName.text.toString();
      String emailID=txtEmailID.text.toString();
      String password=txtPassword.text.toString();

      final Map<String, dynamic> requestData = {
        'action': 'register_user',
        'user_name': '$userName',
        'email_id': '$emailID',
        'password': '$password',
      };

      var request= http.Request("GET",Uri.parse("https://skysoftone.com/androidapi/actions.php?").replace(queryParameters: requestData));
      http.StreamedResponse response=await request.send();
      if(response.statusCode==200)
      {

        var rawData=await response.stream.bytesToString();
        var data=json.decode(rawData);
        var result=data['result'];
        //  for(var i in data['data'])
        //  {
        //    Data model=Data.fromJson(i);
        //    dataList.add(model);
        //  }
        // // print("Data: ${dataList.first.id}");
        print(result);
        if(result=="true")
          {
            //showToast("User Register Successfully");
            //showCoustomToast(scontext);
            Navigator.pushReplacement(scontext, MaterialPageRoute
              (builder: (context)=>MyHomePage(),
            ));
          }
        else{
       //   showToast("User Not Register Successfully");
        }
        return dataList;
      }
      else
      {
        print(response.reasonPhrase);
        return dataList;
      }
    }
    catch(e)
    {
      print("Exception $e");
      throw e;
    }

    // {
    //    http.Response response;
    //     // http.get('https://skysoftone.com/androidapi/actions.php?action=get_login_user');
    //   const url='https://skysoftone.com/androidapi/actions.php?action=get_login_user';
    //   final uri=Uri.parse(url);
    //   http.get(uri);
    //   response=await http.get(uri);
    //   if(response.statusCode==200)
    //   {
    //     setState((){
    //
    //       //stringRespose=response.body;+
    //       mapResponse=jsonDecode(response.body);
    //       listResponse=mapResponse['data'];
    //     });
    //   }
    //  }
  }
  // showToast(String message)
  // {
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.black.withOpacity(0.8),
  //       textColor: Colors.white,
  //       fontSize: 16.0
  //   );
  // }
  // showCoustomToast(BuildContext context) {
  //   FToast fToast =FToast();
  //   fToast.init(context);
  //   Widget toast=Container(
  //     padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(5),
  //       color: Colors.green
  //     ),
  //     child: Row(
  //       //mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(Icons.check,color: Colors.white,),
  //         SizedBox(width: 12,),
  //         Text("User Register Successfully",style: TextStyle(color: Colors.white,fontSize: 14),)
  //       ],
  //     ),
  //   );
  //   fToast.showToast(child: toast,toastDuration: Duration(seconds: 2),
  //     gravity: ToastGravity.BOTTOM
  //   );
  // }
}