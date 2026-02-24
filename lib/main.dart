import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainer Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileCardDemo(),
    );
  }
}

class ProfileCardDemo extends StatefulWidget {
  const ProfileCardDemo({super.key});

  @override
  State<ProfileCardDemo> createState() => _ProfileCardDemoState();
}

class _ProfileCardDemoState extends State<ProfileCardDemo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('AnimatedContainer Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tap the card below!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: AnimatedContainer(

                height: _isExpanded ? 300 : 150,
                width: 250,
                
                decoration: BoxDecoration(
                  color: _isExpanded ? Colors.deepPurple : Colors.blue,
                  borderRadius: BorderRadius.circular(_isExpanded ? 50 : 20),
                ),
                
                padding: EdgeInsets.all(_isExpanded ? 30 : 20),
                
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: _isExpanded ? 80 : 50,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _isExpanded ? 'kessy' : 'Profile',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (_isExpanded) ...[
                      const SizedBox(height: 10),
                      const Text(
                        'Flutter Developer',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 40),
            
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Three Animated Properties:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('1. height: 150 → 300'),
                  const Text('2. borderRadius: 20 → 50'),
                  const Text('3. padding: 20 → 30'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
