import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                height: 250,
                color: Colors.grey.shade50,
               // child: Text(''),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 250,
                    padding:EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: Offset(0,3))
                        ]
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent,),
                            ),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                            ),
                           // prefixIcon: Icon(Icons.search),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Search Project',
                            hintStyle: TextStyle(color:Colors.grey.shade400,fontSize: 15,)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                      child: Text('Search',),
                      onPressed: () {
                        print('Text button click');
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                color: Colors.grey.shade50,
                child: Image.asset('assest/images/18.jpg'),
              ),

              Container(
                height: 290,
                //width: 270,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow:[
                      BoxShadow(color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0,2))
                    ]
                ),
                child: Column(
                  children: [
                    Text('Mobile App',style:TextStyle(fontSize: 28,fontWeight: FontWeight.w500,),),
                    SizedBox(height: 20,),
                    Text('Mobile app templates, game and more ',style:TextStyle(fontSize: 15,),textAlign: TextAlign.center ,),
                    SizedBox(height: 20,),
                    Container(
                      height:150,
                      color:Colors.pink.shade50,
                      child:Image.asset('assest/images/aaa.jpg'),
                    )

                    // Row(
                    //   children: [
                    //     Text('',style:TextStyle(fontSize: 15,),textAlign: TextAlign.center ,),
                    //     Text('Mobile app templates, game and more ',style:TextStyle(fontSize: 15,),textAlign: TextAlign.center ,),
                    //   ],
                    // )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.orange.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center
                  (child: Text("View all categories",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 15))),
              ),
              SizedBox(height:150,),
              Text('Featured Code',style:TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
              // SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Text('Every weak,our staff personally hand pick some of the best new code,script and plugins from our collection',style: TextStyle(fontSize: 15,color: Colors.grey.shade500),textAlign: TextAlign.center,)),

              SizedBox(height: 20,),
              Container(
                height: 340,
                width: 330,
                // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                // margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(5),
                    boxShadow:[
                      BoxShadow(color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:Offset(0,2))
                    ]
                ),
                child: InkWell(
                    onTap: (){
                      print('sssss...........');
                    },
                  child: Column(
                    children: [
                      // Text('Mobile App',style:TextStyle(fontSize: 28,fontWeight: FontWeight.w500,),),
                      // SizedBox(height: 20,),
                      // Text('Mobile app templates, game and more ',style:TextStyle(fontSize: 15,),textAlign: TextAlign.center ,),
                      // SizedBox(height: 20,),
                      Container(
                         height: 170,
                         width: 330,
                        //color: Colors.pink.shade50,
                        child:  Image.asset('assest/images/18.jpg'),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text('phpContent - AI Content Generator plat...',style:TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey.shade800),textAlign:TextAlign.start,),
                            SizedBox(height: 5,),
                            Text('by mobidoia in help And Support Tools',style:TextStyle(fontSize: 12,color: Colors.grey),textAlign:TextAlign.start,),
                          ],
                        ),
                      ),
                      SizedBox(height: 17,),
                      //Text('\$45',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade800,),),
                      Row(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20,),
                          Text('\$45',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade800,),),
                      //    Text('Mobile app templates, game and more ',style:TextStyle(fontSize: 15,),textAlign: TextAlign.center ,),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Column(
                              children: [
                                RatingBarIndicator(
                                  rating: 2.75,
                                 // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                                SizedBox(height: 7,),
                                Text('97 Sales',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.shade500),)
                              ],
                            ),
                            SizedBox(width: 30,),
                            Container(
                              height: 45,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0,1))
                                  ]
                              ),
                              child: Icon(Icons.shopping_cart,size: 24,color: Colors.grey.shade500,),
                            ),

                            InkWell(
                              onTap: (){
                                  print('cardview');
                              },
                              child: Container(
                               // height: 45,
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration:BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,1))
                                      ]
                                  ),
                                child: Center(
                                    child: Text("View Overview",style: TextStyle(color:Colors.orange.shade800,fontWeight: FontWeight.bold,fontSize: 12))),
                              ),
                            ),
                          ],
                        ),
                      ),
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