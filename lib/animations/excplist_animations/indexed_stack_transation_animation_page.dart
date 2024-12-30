import 'package:flutter/material.dart';

class IndexedStackTransationAnimationPage extends StatefulWidget {
  static const String id = "is_transation";

  const IndexedStackTransationAnimationPage({super.key});

  @override
  State<IndexedStackTransationAnimationPage> createState() =>
      _IndexedStackTransationAnimationPageState();
}

class _IndexedStackTransationAnimationPageState
    extends State<IndexedStackTransationAnimationPage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text("Page 1", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Page 2", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Page 3", style: TextStyle(fontSize: 24))),
  ];

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IndexedStack Animation Example"),
        backgroundColor: Colors.blueAccent,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        child: IndexedStack(
          key: ValueKey<int>(_currentIndex), // Ensure smooth animations
          index: _currentIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: "Page 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: "Page 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: "Page 3",
          ),
        ],
      ),
    );
  }
}
