import 'package:flutter/material.dart';



















class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  final _options1=["Food","Travel","Shopping","Education"];
  final _options2=["Entertainment","PersonalCare","Transportation","Miscellaneous"];

  final _title=TextStyle(
    fontSize: 20,
    color: Color.fromRGBO(99,111,140,1),
  );

  final _info=TextStyle(
    fontSize: 20,
    color: Colors.white,
  );



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Container(
                height:50,
                width: 200,
                child: Text("Good Afternoon Jhon Dlamer",
                maxLines: 4,
                )),
            actions: [
              FloatingActionButton(child: Icon(Icons.notification_add,color: Colors.green,),onPressed: (){},backgroundColor: Colors.white,),
            ],
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("Total balance",style: _info,),
                SizedBox(height: 20,),
                Text("2000",style: _info,),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Pay >"),style: ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.black),shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)))),),
                    ElevatedButton(onPressed: (){}, child: Text("Add +"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),),
                  ],
                )

              ],
            ),
          ),

        ),
        Container(
          margin: EdgeInsets.only(top: 300),
          child:ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(onPressed: (){}, child: Text("Request"),style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.green),
                              )
                            ),
                          ),),
                          ElevatedButton(onPressed: (){}, child: Text("History"),style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightGreen),
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),),
                        ],
                      ),

                      SizedBox(height: 40,),

                      Text("Your Rewards",textAlign: TextAlign.left,style: _title,),

                      SizedBox(height: 10,),

                     Container(
                       height: 200,
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       width: double.maxFinite,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: 80,),
                           Text("Entertainment"),
                           SizedBox(height: 20,),
                           Text("2330 points"),
                           SizedBox(height: 20,)
                         ],
                       ),
                       decoration: BoxDecoration(
                         image:DecorationImage(
                           image: AssetImage("assets/EntertainmentWebpagePoints.png"),
                           fit: BoxFit.fitWidth,
                         ),
                       ),
                     ),

                      SizedBox(height: 20,),

                      Text("Explore Categories",style: _title,),

                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:List.generate(4, (index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                               child: Image.asset("assets/${_options1[index]}Icon.png",
                               alignment: Alignment.bottomCenter,
                               ),
                              ),
                              Text("${_options1[index]}",style: TextStyle(
                                fontSize: 10,
                              ),),
                            ],
                          );
                        })
                      ),

                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: Image.asset("assets/${_options2[index]}Icon.png"),
                              ),
                              Text("${_options2[index]}",style: TextStyle(
                                fontSize: 10
                              ),),
                            ],
                          );
                        })
                      ),

                      SizedBox(height: 20,),

                      Text("Hey Jhon you may like this",style: _title,),

                      SizedBox(height: 20,),

                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          height:200,

                          decoration: BoxDecoration(
                            color: Color.fromRGBO(36,211,181,1),
                            image: DecorationImage(
                              image: AssetImage("assets/FreebieWebsite.png")
                            ),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order your welcomekit for free"),
                              Text("Welcome kit includes"),
                              Text("Free bankly badge"),
                              Text("Free bankly tshirt"),
                              Text("More Frebies"),

                              ElevatedButton(onPressed: (){}, child: Text("Order"))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("Use bankly and get",style: _title,),

                      SizedBox(height: 20,),

                      SizedBox(
                          height: 150,
                          child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context,index){

                            return ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                color: Colors.black,
                                child: Card(
                                  color: Colors.black,
                                  child: Image.asset("assets/webpageIcon${index+1}.png"),
                                ),
                              ),
                            );

                      })),

                      SizedBox(height: 20,),

                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: double.maxFinite,
                              color: Color.fromRGBO(99,224,164,1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bring Your Crad at home",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),),
                                  Text("Only for 299 /-",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),),
                                  SizedBox(height: 20,),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: ElevatedButton(onPressed: (){}, child: Text("Book Now",style: TextStyle(
                                        color: Colors.black
                                      ),),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)
                                      ),
                                      )),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            alignment: Alignment.bottomRight,
                            height: 200,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset("assets/webpageIconPack1.png"),
                          ),
                        ],
                      ),

                      SizedBox(height: 20,)





                    ],
                  ),
                ),
              ),
            ),
          ),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
        ),
      ],
    );
  }
}


class CardStyle extends StatefulWidget {
  const CardStyle({Key? key}) : super(key: key);

  @override
  State<CardStyle> createState() => _CardStyleState();
}

class _CardStyleState extends State<CardStyle> {

  bool _isShown=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: FloatingActionButton(child: Icon(Icons.navigate_before),onPressed: (){},backgroundColor: Colors.grey[900],),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Your ",style: TextStyle(color: Colors.white,fontSize: 30),),
                  Text("Bankly ",style: TextStyle(color: Colors.lightGreen,fontSize: 30),),
                  Text("Card ",style: TextStyle(color: Colors.white,fontSize: 30),),
                ],
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: <Color>[
                       Color(0xff45C3B9),
                       Color(0xff909FC0),
                     ],
                   ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Balance",style: TextStyle(fontSize: 10,color: Colors.white),),
                          Image.asset("assets/Icon1.png",scale: 2,)
                        ],
                      ),
                      Text("2000",style: TextStyle(fontSize: 20,color: Colors.white),),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_isShown?"4737   9618    4974    2489":"****   ****    ****    2489",style: _isShown?TextStyle(fontSize: 20,color: Colors.white):TextStyle(fontSize: 20,color: Colors.white)),
                          IconButton(icon: _isShown?Icon(Icons.visibility_off,color: Colors.white,):Icon(Icons.visibility,color: Colors.white,),onPressed: (){
                            setState(() {
                              _isShown=!_isShown;
                            });
                          },)
                        ],
                      ),
                      SizedBox(height: 20,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text("Card holder name",style: TextStyle(fontSize: 10,color: Colors.grey[300]),),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            child: Text("Expiry date",style: TextStyle(fontSize: 10,color: Colors.grey[300]),),
                          ),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Jhon Dalmer",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text("02/23",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 50,),

              ElevatedButton(onPressed: (){}, child: Container(color:Colors.grey.shade800,width:double.infinity,height:50,child: Center(child: Text("How to use my card?"))),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade800)),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Container(color:Colors.grey.shade800,width:double.infinity,height:50,child: Center(child: Text("Order?"))),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade800)),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Container(color:Colors.grey.shade800,width:double.infinity,height:50,child: Center(child: Text("Transaction"))),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade800)),),
              SizedBox(height: 20,),
              
              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a bankly card ?",style: TextStyle(fontSize: 10,color: Colors.white),),
                  Text("Activate",style: TextStyle(fontSize: 10,color: Colors.lightGreen),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
