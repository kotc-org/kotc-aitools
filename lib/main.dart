import 'package:flutter/material.dart';

void main() {
  runApp(AIToolsApp());
}

class AIToolsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Tools',
      theme: ThemeData.dark(),
      home: AIToolsHomePage(),
    );
  }
}

class AIToolsHomePage extends StatefulWidget {
  @override
  _AIToolsHomePageState createState() => _AIToolsHomePageState();
}

class _AIToolsHomePageState extends State<AIToolsHomePage> {
  String selectedFilter = 'All';

  // Sample data of AI tools with names and descriptions (to simulate categories)
  List<Map<String, String>> aiTools = [
    {
      'title': 'Raina for Students',
      'category': 'Chatbot',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/bdaygirl.png'
    },
    {
      'title': 'Custom Chatbot',
      'category': 'Chatbot',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/robot.png'
    },
    {
      'title': 'Language Learning Tutor',
      'category': 'Creative',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/globe.png'
    },
    {
      'title': 'Writing Feedback',
      'category': 'Creative',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/pen.png'
    },
    {
      'title': 'Research Assistant',
      'category': 'Creative',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/robot.png'
    },
    {
      'title': 'Song Generator',
      'category': 'Creative',
      'description': 'Ask questions or get ideas through prompting raina ',
      'image': 'images/bdaygirl.png'
    },
  ];

  // Function to filter AI tools based on selected category
  List<Map<String, String>> getFilteredTools() {
    if (selectedFilter == 'All') {
      return aiTools;
    } else if (selectedFilter == 'Chatbot') {
      return aiTools
          .where((tool) => tool['title']!.contains('Chatbot'))
          .toList();
    } else if (selectedFilter == 'Creative') {
      return aiTools.where((tool) => tool['category'] == 'Creative').toList();
    } else if (selectedFilter == 'New') {
      return aiTools.where((tool) => tool['category'] == 'New').toList();
    }
    return aiTools;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredTools = getFilteredTools();
    return Scaffold(
      body: Stack(
        children: [
          // Background image with reduced brightness
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/98e3/6287/69cbcf5c23afcd52ef37e93d9f3ee21a?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nj2j8arvmkaEadVFcIYwrSSp2TQAT2T9GOpqh5SZA7wXmrZuELAzbSRQVUdVoEQMf23hyFdwO9e4vKchATXha~yELS3xqfOnVzGjxzDDH-K7bM9CTTbb2G-BFKq~S5Sn2W0uuYGyd9nXjwQLCRqonvTW4E-LYCh9fpGzNR7dmOVBm3e7UhprSajcsLcBQVXW-rvthoVphaRT9~pbadlxfFf9cozeFZixUKIWuWzYYzrfw1HNRHEP2u2qp00h7hQCRrNCFlSDG0wBQHGUVbTcMuF3E1q023roNcnaG9R1L6S~zKxl3FyXXzGWJb8uIyjzK7Fog7ldm34NsmTd2B177Q__'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Row(
            children: [
              // Sidebar
              Container(
                width: 250,
                color: const Color(0xFF2C2C2C), // Sidebar background color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo with Text Row
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 30),
                      child: Row(
                        children: [
                          // Circular Logo with Small "CLASSROOM" Text Underneath
                          Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'images/logo.png', // Replace with your logo image path
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'CLASSROOM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 25),
                          // "Biology Classroom" Header Text
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biology Classroom',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Menu Items
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        title: Text(
                          'Menu',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // Dashboard
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading:
                            const Icon(Icons.dashboard, color: Colors.white),
                        title: const Text('Dashboard',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Dashboard page');
                        },
                      ),
                    ),
                    // Create Source
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading: const Icon(Icons.add_box, color: Colors.white),
                        title: const Text('Create Source',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Create Source page');
                        },
                      ),
                    ),
                    // Quiz
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading: const Icon(Icons.quiz, color: Colors.white),
                        title: const Text('Quiz',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Quiz page');
                        },
                      ),
                    ),
                    // KOTC Teachers
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading: const Icon(Icons.people, color: Colors.white),
                        title: const Text('KOTC Teachers',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('KOTC Teachers page');
                        },
                      ),
                    ),
                    // Flashcards
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading: const Icon(Icons.book, color: Colors.white),
                        title: const Text('Flashcards',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Flashcards page');
                        },
                      ),
                    ),
                    // Statistics
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading:
                            const Icon(Icons.bar_chart, color: Colors.white),
                        title: const Text('Statistics',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('Statistics page');
                        },
                      ),
                    ),
                    // AI Tools
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: ListTile(
                        leading: const Icon(Icons.memory, color: Colors.white),
                        title: const Text('AI Tools',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          print('AI Tools page');
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Switch to KOTC Main
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          print('Switch to KOTC tapped');
                        },
                        child: Container(
                          width: 150, // Set the desired width
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFF4F4F4F), // Dark background color
                            borderRadius:
                                BorderRadius.circular(10), // Rounded edges
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(5), // Rounded image
                                child: Image.asset(
                                  'images/logo.png', // Replace with your image path
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Flexible(
                                child: Text(
                                  'Switch to KOTC Main',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Main content - AI Tools grid

              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Filter buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilterButton(
                            label: 'All',
                            isSelected: selectedFilter == 'All',
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'All';
                              });
                            },
                          ),
                          FilterButton(
                            label: 'Chatbots',
                            isSelected: selectedFilter == 'Chatbot',
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'Chatbot';
                              });
                            },
                          ),
                          FilterButton(
                            label: 'Creative',
                            isSelected: selectedFilter == 'Creative',
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'Creative';
                              });
                            },
                          ),
                          FilterButton(
                            label: 'New',
                            isSelected: selectedFilter == 'New',
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'New';
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // AI Tools grid
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: filteredTools.map((tool) {
                            return AIToolCard(
                              title: tool['title']!,
                              description: tool['description']!,
                              image: Image.asset(
                                  tool['image']!), // Load the image from assets
                              context: context, // Pass the context as required
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Sidebar Menu Item Widget
class SidebarMenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isBottom;

  const SidebarMenuItem(
      {required this.title, this.isSelected = false, this.isBottom = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.0, vertical: isBottom ? 10.0 : 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.pinkAccent : Colors.transparent,
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onTap: () {
            // Handle menu navigation
          },
        ),
      ),
    );
  }
}

// Filter button widget
class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const FilterButton(
      {required this.label, required this.isSelected, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.grey,
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

// AI Tool Card Widget
class AIToolCard extends StatelessWidget {
  final String title;
  final String description;
  final Image image;
  final BuildContext context; // Retaining the context parameter

  const AIToolCard({
    required this.title,
    required this.description,
    required this.image,
    required this.context, // Context still passed as before
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          this.context, // Use the passed context instead of the local one
          MaterialPageRoute(
              builder: (context) => ToolFormPage(toolName: title)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the provided image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 50, // Set the width to a small size
                  height: 50, // Set the height to a small size
                  child: image, // Use the provided image
                ),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 10),

              // Display the tool title
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Display the tool description
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Form Page for AI Tools
class ToolFormPage extends StatelessWidget {
  final String toolName;

  const ToolFormPage({required this.toolName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$toolName Form'),
      ),
      body: Center(
        child: Text(
          'This is the form page for $toolName',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
