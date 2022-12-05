import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:prob_task_3/Widgets/CategoryWidget.dart';
import 'package:prob_task_3/Widgets/OfferWidget.dart';
import 'package:prob_task_3/Widgets/TaskWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        // primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: Material(
          color: Colors.white,
          child: CustomScrollView (
                slivers: [
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      sliver: SliverAppBar(
                        // bottom: PreferredSizeWidget(
                        //   NavigationBar()
                        // ),
                        leading: Image.asset("assets/Vector.png"),
                        pinned: true,

                        title: const Text("Welcome back,", style: TextStyle(color: Color(0xFF525251), fontSize: 15)),
                        backgroundColor: Colors.white,
                        // collapsedHeight: 50,
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset("assets/Vector (2).jpg", height: 22, width: 22,),
                          )],
                        forceElevated: true,
                        elevation: 5.0,
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0,top: 30),
                        child: Text(
                          "Complete your\nnow KYC Now",
                          style: TextStyle(fontSize: 20, color: Color(0xFF525251), ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 540,
                          width: 328,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color(0xFF303F9F),
                            // color: Colors.white,
                          ),
                          // color: Color(0xFF303F9F),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(16, 24, 194, 8),
                                child: Text("Total Spends", style: TextStyle(color: Color(0xFFDFE1F3), fontSize: 20),),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 35),
                                child: Text("₹0", style: TextStyle(color: Colors.white, fontSize: 32,fontWeight: FontWeight.bold,  ),),
                              ),
                              const Text("₹18000 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -budget", style: TextStyle(color: Color(0xFFDFE1F3), fontSize: 12,fontWeight: FontWeight.bold, ),),
                              const SizedBox(height: 170),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 18),
                                child: Text("Jan month's Data", style: TextStyle(color: Color(0xFFDFE1F3), fontSize: 12,fontWeight: FontWeight.bold, ),),
                              ),
                              Stack(
                                fit: StackFit.loose,
                                clipBehavior: Clip.hardEdge,
                                children: [
                                  Container(
                                      height: 168,
                                      width: 303,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: const [
                                          Text("Pending KYC", style: TextStyle(fontSize: 18),),
                                          Text("Lorem Ipsum is simply dummy text\n"
                                            'of the printing and typesetting\n'
                                            'industry. Lorem' , style: TextStyle(fontSize: 10),),
                                        ],
                                      )
                                  ),
                                  Positioned(
                                    top: -28,
                                    right: -39,
                                    child: Container(
                                      height: 144,
                                      width: 144,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0x1AE13B30)
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ]
                          )
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text("Categories", style: TextStyle(fontSize: 25, color: Color(0xFF525251)),),
                      ),
                      // SizedBox(height: 500,)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10 ,50),
                          child: Row(
                            // itemExtent: 200,
                            children: const[
                              CategoryWidget(img: "assets/Burger.png", name: "Food"),
                              CategoryWidget(img: "assets/Pet.png", name: "Food"),
                              CategoryWidget(img: "assets/Shopping.png", name: "Shopping"),
                              CategoryWidget(img: "assets/Entertainment.png", name: "Entertainment"),
                              CategoryWidget(img: "assets/PersonalCare.png", name: "Personal Care"),
                              CategoryWidget(img: "assets/Travel.png", name: "Travel")
                            ]
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text("Tasks", style: TextStyle(fontSize: 25, color: Color(0xFF525251)),),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 10, 10 ,50),
                          child: Row(
                            // itemExtent: 200,
                              children: const[
                                TaskWidget(),
                                TaskWidget(),
                                TaskWidget(),
                                TaskWidget(),
                                TaskWidget(),
                                TaskWidget(),
                              ]
                            ),
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text("Offers & Rewards", style: TextStyle(fontSize: 25, color: Color(0xFF525251)),),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10 ,50),
                          child: Row(
                            // itemExtent: 200,
                            children: const[
                              OfferWidget(),
                              OfferWidget(),
                              OfferWidget(),
                            ]
                          ),
                        ),
                      ),
                    ]
                      )
                    )
                ]
          ),
        ),
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[8]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                fixedColor: const Color(0xFF303F9F),
                showSelectedLabels: true,
                showUnselectedLabels: false,
                // selectedItemColor: const Color(0xFFE8EAF6),
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home'
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card_outlined, color: Color(0xFFB7B7B7),),
                    label: "Deals"
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.pie_chart_outline, color: Color(0xFFB7B7B7),),
                    label: "FAV"
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/Vectoraward.png"),
                    label: "Award"
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}


