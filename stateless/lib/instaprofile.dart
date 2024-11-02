import 'package:flutter/material.dart';

void main() {
  runApp(InstagramProfileApp());
}

class InstagramProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Profile UI',
      theme: ThemeData.dark(),
      home: InstagramProfilePage(),
    );
  }
}

class InstagramProfilePage extends StatefulWidget {
  @override
  _InstagramProfilePageState createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController? _tabController;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Left-align the username
          children: [
            Text('denifirmansyah_z2'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile and Stats Row
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer frame with music notes
                      CircleAvatar(
                        radius: 47,
                        backgroundColor: Colors.red,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 22,
                            ),
                            Positioned(
                              top: 8,
                              child: Icon(Icons.music_note, color: Colors.white54, size: 16),
                            ),
                            Positioned(
                              bottom: 8,
                              child: Icon(Icons.music_note, color: Colors.white54, size: 16),
                            ),
                          ],
                        ),
                      ),
                      // Profile Picture
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage('https://picsum.photos/200/300?random=1'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('6', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('posts'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('233', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('followers'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('374', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('following'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bio Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Deni Firmansyah', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Digital Creator'),
                  Text('Tech Enthusiast'),
                ],
              ),
            ),
            SizedBox(height: 8),
            // Edit and Share Profile Buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Edit Profile'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Share Profile'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Highlights Section
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://picsum.photos/200/300?random=2'),
                      ),
                      Text('Setups'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://picsum.photos/200/300?random=3'),
                      ),
                      Text('Random'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.add),
                      ),
                      Text('New'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            // Posts, Reels, Tagged Tabs
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.grid_on_outlined)),
                Tab(icon: Icon(Icons.video_library_outlined)),
                Tab(icon: Icon(Icons.person_pin_outlined)),
              ],
            ),
            // Content for each tab
            Container(
              height: 400, // Set a fixed height to fit the grid
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Posts Grid
                  GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Image.network(
                        'https://picsum.photos/200/300?random=${index + 4}',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  // Reels Tab (for example)
                  Center(child: Text('Reels Section')),
                  // Tagged Tab (for example)
                  Center(child: Text('Tagged Section')),
                ],
              ),
            ),
          ],
        ),
      ),
      // Updated Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage('https://picsum.photos/200/300?random=10'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}