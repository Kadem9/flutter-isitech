import 'package:flutter/material.dart';

class MyCustomView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String subsubtitle;

  MyCustomView({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.subsubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    subsubtitle,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 0.8 * MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(20, 7, 2, 1),
                        side: BorderSide(
                          color: Color.fromRGBO(243, 78, 58, 1),
                          width: 1.0,
                        ),
                      ),
                      child: Text('Next'),
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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(18, 18, 19, 1),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/gym1.png',
                width: 100,
                height: 100,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'GYMNES',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 4.0,
                      ),
                    ),
                    TextSpan(
                      text: 'TIC',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        letterSpacing: 4.0,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Be an inspiration',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 88, 88, 88),
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 131, 131, 131)),
                    fillColor: Color.fromARGB(255, 24, 24, 24),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 131, 131, 131),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 131, 131, 131)),
                    fillColor: Color.fromARGB(255, 24, 24, 24),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 131, 131, 131),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(243, 78, 58, 1),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: SizedBox(
                  width: 250,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Login with',
                style: TextStyle(
                    fontSize: 16, color: const Color.fromARGB(255, 73, 73, 73)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 57, 56, 56),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {},
                      color: Color.fromARGB(255, 34, 31, 31),
                      iconSize: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 57, 56, 56),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.laptop),
                      onPressed: () {},
                      color: Color.fromARGB(255, 34, 31, 31),
                      iconSize: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 57, 56, 56),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.window),
                      onPressed: () {},
                      color: Color.fromARGB(255, 34, 31, 31),
                      iconSize: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('Forgot Password?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 187, 187, 187),
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(20, 21, 22, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyCustomView(
                    title: 'Get Stronger for',
                    subtitle: 'Preparation',
                    imagePath: 'assets/images/Image.png',
                    subsubtitle: 'Be an Inspiration',
                  ),
                ),
              );
            },
            color: const Color.fromRGBO(218, 214, 214, 1),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            color: const Color.fromRGBO(218, 214, 214, 1),
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            color: const Color.fromRGBO(218, 214, 214, 1),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(20, 21, 22, 1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome, Roberto!',
                              style: TextStyle(
                                  fontSize: 23,
                                  color:
                                      const Color.fromRGBO(218, 214, 214, 1)),
                            ),
                            Text(
                              'Monday, 21 August 2020',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(84, 84, 84, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: const Color.fromRGBO(218, 214, 214, 1),
                      size: 32.0,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/currentstatus.png',
                width: 500,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Activity',
                style: TextStyle(
                    color: const Color.fromRGBO(218, 214, 214, 1),
                    fontSize: 20),
              ),
              Text('Choose your program',
                  style: TextStyle(color: const Color.fromRGBO(84, 84, 84, 1))),
              Image.asset(
                'assets/images/trainingforbeginer.png',
                width: 500,
              ),
              Image.asset(
                'assets/images/buildyourbody.png',
                width: 500,
              ),
              Image.asset(
                'assets/images/findmore.png',
                width: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(20, 21, 22, 1),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Roberto!',
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromRGBO(218, 214, 214, 1)),
                        ),
                        Text(
                          'Monday, 21 August 2020',
                          style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromRGBO(84, 84, 84, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: const Color.fromRGBO(218, 214, 214, 1),
                  size: 32.0,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/currentstatus.png',
            width: 500,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Activity',
            style: TextStyle(
                color: const Color.fromRGBO(218, 214, 214, 1), fontSize: 20),
          ),
          Text('Choose your program',
              style: TextStyle(color: const Color.fromRGBO(84, 84, 84, 1))),
          Image.asset(
            'assets/images/trainingforbeginer.png',
            width: 500,
          ),
          Image.asset(
            'assets/images/buildyourbody.png',
            width: 500,
          ),
          Image.asset(
            'assets/images/findmore.png',
            width: 500,
          ),
        ],
      ),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyCustomView(
      title: 'Get Stronger for',
      subtitle: 'Preparation',
      imagePath: 'assets/images/Image.png',
      subsubtitle: 'Be an Inspiration',
    ),
    HomePage(),
    RecommendationPage(),
    LoginPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Recommendation',
          ),
        ],
      ),
    );
  }
}

class RecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendation'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(20, 21, 22, 1),
        ),
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFB12A19),
                    Color(0xFFF35E4C),
                  ],
                ),
              ),
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          'Get Ready For',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'New Era',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "That strategy doesn't need to",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 214, 214, 214),
                            letterSpacing: 0.4,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'be so rigid that it leaves no',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 214, 214, 214),
                            letterSpacing: 0.4,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'room for fun',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 214, 214, 214),
                            letterSpacing: 0.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/girl.png',
                      width: 150,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Rekomendation',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Last article in this month',
                style: TextStyle(color: Color.fromARGB(255, 102, 102, 102)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(37, 36, 36, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('10 Principels to',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'Pack on Muscle',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/banc.png',
                        width: 60,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(37, 36, 36, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('The Way to Make',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'Your Dream',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/haltere.png',
                        width: 60,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(37, 36, 36, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Best Breakfast to',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'Build Body',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/banana.png',
                        width: 60,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: MyCustomView(
        title: 'Get Stronger for',
        subtitle: 'Preparation',
        imagePath: 'assets/images/Image.png',
        subsubtitle: 'Be an Inspiration',
      ),
    );
  }
}
