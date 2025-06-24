import 'package:clim8/Profile_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/weather_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),


          SafeArea(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: height*0.05),

                Center(
                  child: Container(
                    width: width*0.9,
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: 'Search for a Location...',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: width*0.04,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: width*0.05,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: height*0.05),

                Text(
                  'Varanasi',
                  style: TextStyle(
                    fontSize: height*0.035,
                    color: Colors.white,
                  ),
                ),

                Text(
                  '19°',
                  style: TextStyle(
                    fontSize: height*0.08,
                    color: Colors.white,
                  ),
                ),

                Text(
                  'Mostly Clear',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),


                Text(
                  'H:24°  L:18°',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                ),
                ),

                SizedBox(height: height*0.07),

                Image.asset(
                  'assets/house_homepage.png',
                  fit: BoxFit.contain,
                ),

              ],
            ),

          ),

          Stack(
            children: [

              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/lowerpart_homepage.png',
                  fit: BoxFit.fill,
                  width: width*0.96,
                  height: height*0.12,
                ),
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: height*0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width*0.1),
                              child: Container(
                                height: height*0.045,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white)
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProfilePage()),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width*0.1),
                              child: Container(
                                height: height*0.045,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white)
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/plus_homepage.png',
                  height: height * 0.1,
                  width: width * 0.7,
                ),
              ),

              Positioned(
                bottom: height * 0.03,
                left: (width / 2) - (height * 0.05) / 2,

                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.zero,
                    minimumSize: Size(height * 0.05, height * 0.05),
                    backgroundColor: Colors.white,
                    elevation: 4,
                  ),
                  child: Image.asset('assets/Plus (1).png',height: 40,),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}
