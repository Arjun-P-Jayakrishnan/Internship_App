import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/onboarding.dart';





















class IntroductionPath extends StatefulWidget {
  const IntroductionPath({Key? key}) : super(key: key);

  @override
  State<IntroductionPath> createState() => _IntroductionPathState();
}

class _IntroductionPathState extends State<IntroductionPath> {
  var _showFirstPage=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3000),(){
      setState(() {
        _showFirstPage=!_showFirstPage;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:_showFirstPage? Color.fromRGBO(237,255,244,1):Colors.white,
      body: AnimatedCrossFade(
        alignment: Alignment.centerRight,
        duration: Duration(milliseconds: 1000),
        crossFadeState: _showFirstPage?CrossFadeState.showSecond:CrossFadeState.showFirst,
        firstChild: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/imagePage.png",),
              fit: BoxFit.cover,
            ),
          ),
          child:Center(
            child: Image.asset("assets/IconImage.png"),
          )
        ),
        secondChild: IntroductionPage()
      ),
    );
  }
}















class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {

  Image _getImage(image_name){
    return Image.asset('assets/${image_name}');
  }
  var counter=0;

  ScrollController? _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController=ScrollController();
  }

  void _onComplete(){
    print("completed");
  }

  final _title=["Track your budget","Set Your savings","Get amazing Rewards"];
  final _description=["the budget feature allows teens to track their spendings","this feature allows teens to set saving goals","this rewards feature is used to incentivise the user"];

  final _pageController=PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            height: double.maxFinite,
            child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,index){

                    return index<3 ?Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(237,255,244,1)
                      ),
                      child: Column(
                        children: [
                           if(index!=0)
                             ...[
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [

                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: FloatingActionButton(
                                      child: Icon(Icons.navigate_before),
                                      onPressed: (){
                                        print("index ${index}");
                                        _pageController.previousPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                                      },
                                    )
                                  ),

                                  Container(
                             alignment: Alignment.centerRight,
                             child: OutlinedButton(
                                   child: Text("skip"),
                                   onPressed: (){
                                     _pageController.jumpToPage(4);
                                   },
                                   style: ButtonStyle(
                                     backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)
                                   ),
                             ),
                           ),
                                ],
                              ),
                           ],
                          SizedBox(height: index!=0?120:150,width: 10,),
                          Image.asset("assets/image${index+1}.png"),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(3, (indexDot){
                              return Container(
                                alignment: Alignment.center,
                                height: 5,
                                width: indexDot==index?50:20,
                                decoration: BoxDecoration(
                                  color:index==indexDot?Colors.green:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              );
                            } ),
                          ),
                          SizedBox(height: 20,),
                          Text("${_title[index]}",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),

                          SizedBox(height: 20,),

                          Text("${_description[index]}",textAlign: TextAlign.center,),

                          SizedBox(height: 100,),

                          ElevatedButton(
                            child: FractionallySizedBox(
                              alignment: Alignment.center,
                              widthFactor: 0.7,
                              child: Center(child: Text("Next")),
                            ),
                            onPressed: (){
                              _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                            },
                            style:ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                            ),
                          ),

                    ],
                      )
                    ):Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            child: FloatingActionButton(
                                child: Icon(Icons.navigate_before),
                                onPressed: (){
                                  _pageController.previousPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                                }),
                          )
                        ],
                      )
                    );
              }
              ),
          ),
        ],
      ),
    );

  }
}

