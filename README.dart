import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingScreen(),
    );
  }
}

//1st screen
class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Shopsie',
                  style: TextStyle(
                    color: Color.fromRGBO(98, 107, 252, 1),
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text('The best way to style your life.',
                    selectionColor: Color.fromRGBO(176, 177, 179, 1)),
                SizedBox(height: 100),
                ClipRRect(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(60.0),
                    right: Radius.circular(60.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(240, 60),
                      backgroundColor: Color.fromRGBO(98, 107, 252, 1),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//2nd secreen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome back! Glad to see you, Again!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Enter your email',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 185, 179, 179),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 185, 179, 179),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 185, 179, 179),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Color.fromRGBO(98, 107, 252, 1),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Or Login with',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 185, 179, 179),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'lib/icons/facebook.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'lib/icons/search.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromRGBO(98, 107, 252, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//3rd screen
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello! Register to get started',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'First Name',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 185, 179, 179),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Last Name',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 185, 179, 179),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 185, 179, 179),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 185, 179, 179),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Color.fromRGBO(98, 107, 252, 1),
              ),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Or Login with',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 185, 179, 179),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'lib/icons/facebook.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'lib/icons/search.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    // Navigate to the registration screen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromRGBO(98, 107, 252, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//4th screen
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Shopsie',
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromRGBO(98, 107, 252, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Container(
            height: 150,
            color: Color.fromARGB(255, 208, 203, 203),
            width: double.infinity,
            child: Image.asset(
              'lib/icons/sale.png',
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 20),

          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(
                "TRENDING NOW",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),

          /*  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "TRENDING NOW",
              style: TextStyle(fontSize: 16),
            ),
          ]),*/

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(98, 107, 252, 1),
                ),
                child: Text(
                  'All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 208, 203, 203),
                ),
                child: Text(
                  'Dresses',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 208, 203, 203),
                ),
                child: Text(
                  'Accessories',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 208, 203, 203),
                ),
                child: Text(
                  'Dresses',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.black,
                  child: Image.asset(
                    'lib/icons/p1.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.grey,
                  child: Image.asset(
                    'lib/icons/p2.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.red,
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.purple,
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(
                "ONLY TRUSTED BRANDS",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),

          /* Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "ONLY TRUSTED BRANDS",
              style: TextStyle(fontSize: 16),
            ),
          ]),*/
          SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                2,
                (index) => Container(
                  width: 300,
                  height: 100,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset(
                    index == 0
                        ? 'lib/icons/fendi.png'
                        : index == 1
                            ? 'lib/icons/rolex.png'
                            : '',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "GET 20% OFF",
              style: TextStyle(fontSize: 16),
            ),
          ]),
          SizedBox(height: 20),

          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(60.0),
              right: Radius.circular(60.0),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(240, 60),
                backgroundColor: Color.fromRGBO(98, 107, 252, 1),
              ),
              child: Text(
                'Subscribe',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
