import 'package:cv_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'Home';
  var item = ['Home', 'About', 'Service', 'Portfolio', 'Blogs', 'Contacts'];
  String path = 'assets/';
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 37, 41, 1),
        leading: Image.asset('${path}logo.png'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (int index) {
              startScroll(index);
            },
            itemBuilder: (BuildContext context) {
              return item.asMap().entries.map((MapEntry<int, String> entry) {
                return PopupMenuItem<int>(
                  value: entry.key,
                  child: Text(entry.value),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(45, 46, 46, 1),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: <Widget>[
              homeCard(),
              //About
              aboutHeading(),
              aboutText(),
              aboutButtons(),
              //Services
              heading('Services'),
              servicesCard('Creative Design', '${path}settings.png'),
              servicesCard('Clean Code', '${path}clean.png'),
              servicesCard('Responsive Design', '${path}blocks.png'),
              servicesCard('Bootstrap 4', '${path}piechart.png'),
              servicesCard('Fonts Icon', '${path}code.png'),
              servicesCard('Awesome Support', '${path}support.png'),
              //Counters
              counterStats('HAPPY CLIENTS', '${path}happy.png', 368),
              counterStats('PROJECTS COMPLETED', '${path}like.png', 937),
              counterStats('FILES DOWNLOADED', '${path}earth.png', 438),
              counterStats('LINES OF CODE', '${path}user.png', 5946),
              //Portfolio
              // ignore: prefer_const_constructors
              heading('Portfolio'),
              addUpperButtons(),
              addLowerButtons(),
              addImages(context),
              //Our Blogs
              heading('Our Blogs'),
              blogsCard('Master These Awesome', 'assets/b1.png', context),
              blogsCard(
                  'Best Design Items to Appeal', 'assets/b2.png', context),
              blogsCard(
                  'The 20 Best Lightroom Presets', 'assets/b3.png', context),
              //Contact
              heading('Keep In Touch'),
              textboxes('Name'),
              textboxes('Email'),
              textboxes('Subject'),
              textboxes('Message'),
              sendNowButton(),
              contactCard('2651 Main Street, Suit 124\nSeattle, WA, 98101',
                  'assets/location.png'),
              contactCard('012345678', 'assets/smartphone.png'),
              contactCard('hello@mubbashir.com', 'assets/email.png'),
              footer(),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollToIndex(int index) {
    scrollController.animateTo(
      index * 1.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void startScroll(int index) {
    if (index == 0) {
      _scrollToIndex(0);
    } else if (index == 1) {
      _scrollToIndex(400);
    } else if (index == 2) {
      _scrollToIndex(750);
    } else if (index == 3) {
      _scrollToIndex(3000);
    } else if (index == 4) {
      _scrollToIndex(4500);
    } else if (index == 5) {
      _scrollToIndex(6000);
    }
  }
}
