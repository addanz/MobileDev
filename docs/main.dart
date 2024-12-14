import 'package:flutter/material.dart';
import 'screens/aboutme.dart';
import 'screens/contact.dart';
import 'widget/portfoliotitle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Addan\'s Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addan\'s Portfolio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutMeScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              const Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Welcome to My Portfolio!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Hi, I\'m Addan, a passionate Computer Programming student. This website is for my Mobile Development course by '
                        'the code of INFT 3101-01. This website is meant to allow you to explore fun things about me and the work I have '
                        'completed throughout my computer programming career so far. Explore my projects, labs, and work! Please use '
                        'the navigation bar to access the different pages!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Portfolio Section
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Portfolio',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const PortfolioTile(
                        title: 'Lab Work',
                        description: 'In labs, I got to practice and experiment with Android Studio, MIT App Inventor, and DartPad. Using these different apps, '
                            'I made multiple activities with multiple screens, sharing things about myself like my favourite quote, making quizzes to try out and quiz my friends. '
                            'I also created informative blog pages about what Arbaeen is and my experience with it. On this lab about Arbaeen, I incorporated a checklist to help others '
                            'plan for their trip as well.',
                        icon: Icons.laptop,
                      ),
                      const PortfolioTile(
                        title: 'Classwork',
                        description: 'For classwork, I did things similar to those mentioned for the lab work but this time experimented with different types of coding, technologies, frameworks, '
                            'and tools. Some of the different things we tried out included Java, Flutter, Dart, HTML/CSS, JavaScript, Bootstrap, and WordPress, '
                            'each applied to different aspects of programming and development.',
                        icon: Icons.notes,
                      ),
                      const PortfolioTile(
                        title: 'Projects',
                        description: 'For projects, this is my biggest individual project aside from the group project where we built a game called Maze Maureders. In this game, you pick a character '
                            'and start in a maze. As you open doors, you unlock more of the maze map and face attackers. You can either use a defensive shielding ability or an attacking ability '
                            'to defeat the attackers. It is a timed game, so whoever defeats all attackers the fastest gets their record on the leaderboard. I will attach images to display my work:',
                        icon: Icons.folder,
                      ),
                      const SizedBox(height: 16),
                      // Add images side by side
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/Picture1.png', 
                                fit: BoxFit.contain,
                                height: 500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/Picture2.png', 
                                fit: BoxFit.contain,
                                height: 500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/Picture3.png', 
                                fit: BoxFit.contain,
                                height: 500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/Picture4.png', 
                                fit: BoxFit.contain,
                                height: 500,
                              ),
                            ),
                          ),
                        ],
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