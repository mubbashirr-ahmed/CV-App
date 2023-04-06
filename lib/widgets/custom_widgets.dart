import 'package:flutter/material.dart';
import 'package:mccounting_text/mccounting_text.dart';
import 'animated_text.dart';

Widget heading(String headline) {
  return Padding(
    padding: const EdgeInsets.only(top: 60.0, bottom: 60),
    child: Text(
      headline,
      style: const TextStyle(
          color: Colors.yellow, fontSize: 28.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
  );
}

Widget aboutButtons() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.yellow,
              elevation: 0.0,
            ),
            child: const Text(
              'Download CV',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'Portfolio',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget servicesCard(String headLine, String imagePath) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Card(
      color: Colors.black,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(20),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20),
              child: Text(
                headLine,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget aboutHeading() {
  // ignore: prefer_const_constructors
  return Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.only(left: 20.0, top: 50.0),
    child: const Text(
      'About Me',
      style: TextStyle(
        color: Colors.yellow,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget aboutText() {
  // ignore: prefer_const_constructors
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),
  );
}

Widget homeCard() {
  return Center(
    child: Card(
      child: Container(
        height: 400.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text(
                'HELLO I\'M',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const AnimatedText(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            buildButton(),
          ],
        ),
      ),
    ),
  );
}

Widget buildButton() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.yellow, width: 2.0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Text(
          'Download CV',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget counterStats(String headline, String path, double lim) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 60,
        height: 60,
        margin: const EdgeInsets.all(20),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: McCountingText(
          begin: 0,
          end: lim,
          precision: 0,
          style: const TextStyle(
            fontSize: 35.0,
            color: Colors.yellow,
          ),
          duration: const Duration(seconds: 15),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Text(
          headline,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      )
    ],
  );
}

Widget addUpperButtons() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.yellow,
              elevation: 0.0,
            ),
            child: const Text(
              'All',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            child: const Text(
              'Marketing',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            child: const Text(
              'Design',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget addLowerButtons() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10.0, bottom: 40),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.yellow, width: 2.0),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            child: const Text(
              'Development',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget addImages(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/1.jpg'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/2.jpg'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/3.jpg'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/4.jpg'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/5.jpg'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
          image: const AssetImage('assets/6.jpg'),
        ),
      ),
    ],
  );
}

Widget blogsCard(String headLine, String imagePath, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Card(
      color: Colors.black,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20.0, bottom: 20),
              child: Text(
                headLine,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Text(
                'By Dorian Gray',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget textboxes(String content) {
  return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: TextField(
        maxLines: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: content,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ));
}

Widget sendNowButton() {
  return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            textStyle: const TextStyle(color: Colors.white),
            padding: const EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: const Text('Send Now'),
        ),
      ));
}

Widget contactCard(String headline, String pathI) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 30,
        height: 30,
        margin: const EdgeInsets.all(20),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathI),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Text(
          headline,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      )
    ],
  );
}

Widget footer() {
  return Card(
    color: Colors.black,
    margin: const EdgeInsets.only(top: 16.0),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/facebook.png', height: 30.0, width: 30.0),
                const SizedBox(width: 15.0),
                Image.asset('assets/twitter.png', height: 30.0, width: 30.0),
                const SizedBox(width: 15.0),
                Image.asset('assets/dribble.png', height: 30.0, width: 30.0),
                const SizedBox(width: 15.0),
                Image.asset('assets/skype.png', height: 30.0, width: 30.0),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 15),
            child: Text(
              'All rights reserved 2023',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
