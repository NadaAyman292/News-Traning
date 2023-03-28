import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/widgets/custom_app_bar.dart';
import 'package:news_app/widgets/texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/custom_list_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.9);

  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            gap: 8,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                textColor: Colors.white,
              ),
              GButton(
                icon: CupertinoIcons.globe,
                text: 'Home',
                textColor: Colors.white,
              ),
              GButton(
                icon: CupertinoIcons.archivebox,
                text: 'Home',
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.person_3_outlined,
                text: 'User',
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      const Text(
                        "Breaking News",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      TextButton(onPressed: () {}, child: Text("View all"))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 850,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            selectindex = value;
                          });
                        },
                        controller: controller,
                        itemCount: 5,
                        itemBuilder: (context, int index) {
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    right: 10,
                                    left: 5,
                                    top: selectindex == index ? 0 : 20,
                                    bottom: selectindex == index ? 0 : 20),
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/sport.jpg",
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.blue,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sports",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(bottom: 20, left: 20, child: Texts()),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 5,
                        effect: const ExpandingDotsEffect(
                            activeDotColor: Colors.blue,
                            dotColor: Color.fromARGB(255, 209, 207, 207),
                            dotHeight: 10,
                            dotWidth: 10,
                            expansionFactor: 4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Text(
                        "Recommendation",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      TextButton(onPressed: () {}, child: Text("View all"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      return Custom_ListTile();
                    }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
