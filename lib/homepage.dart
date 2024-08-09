import 'package:flutter/material.dart';
import 'favorite_screen.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(
                  255, 111, 219, 243), // Set the color of the menu button icon
            ),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: ClipOval(
                child: Image.asset(
                  'assets/images/id.jpeg',
                  fit: BoxFit.cover,
                  width: 32, // Adjust the size as needed
                  height: 32,
                ),
              ),
              onPressed: () {
                // Handle image icon button press
              },
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16), // Add some spacing from the AppBar
              Text(
                'find your',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'experience',
                style: TextStyle(
                  fontSize: 50, // Same font size for consistency
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16), // Add some spacing after the heading
              TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 111, 219, 243),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                tabs: [
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Experiences'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Adventures'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Activities'),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ExperienceContent(),
                    Center(child: Text('Adventures Content')),
                    Center(child: Text('Activities Content')),
                  ],
                ),
              ),
              SizedBox(height: 16), // Add some spacing before the images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      RoundImage(imagePath: 'assets/images/download.jpg'),
                      SizedBox(height: 4),
                      Text('kayak'), // Add name below the image
                    ],
                  ),
                  Column(
                    children: [
                      RoundImage(imagePath: 'assets/images/download (1).jpg'),
                      SizedBox(height: 4),
                      Text('diving'), // Add name below the image
                    ],
                  ),
                  Column(
                    children: [
                      RoundImage(imagePath: 'assets/images/download (2).jpg'),
                      SizedBox(height: 4),
                      Text('climbing'), // Add name below the image
                    ],
                  ),
                  Column(
                    children: [
                      RoundImage(imagePath: 'assets/images/download (3).jpg'),
                      SizedBox(height: 4),
                      Text('treking'), // Add name below the image
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16), // Add some spacing before the icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HoverIconButton(
                    icon: Icons.home,
                    tooltip: 'Home',
                    onPressed: () {},
                  ),
                  HoverIconButton(
                    icon: Icons.message,
                    tooltip: 'Message',
                    onPressed: () {},
                  ),
                  HoverIconButton(
                    icon: Icons.favorite,
                    tooltip: 'Favorite',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoriteScreen()),
                      );
                    },
                  ),
                  HoverIconButton(
                    icon: Icons.search,
                    tooltip: 'Search',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExperienceCard(
                      imagePath: 'assets/images/3.jpg',
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Extreme Surf',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Santa Curz',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExperienceCard(
                      imagePath: 'assets/images/2.jpg',
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kayaking Lake',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Lake Powell',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 32), // Add some spacing between rows
          Row(
            children: [
              Text(
                'What would you like?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(), // Add space between text and button
              TextButton(
                onPressed: () {
                  // Add button functionality
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black, // Change button text color to black
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

class ExperienceCard extends StatelessWidget {
  final String imagePath;

  ExperienceCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imagePath,
          height: 300, // Increased height
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class RoundImage extends StatelessWidget {
  final String imagePath;

  RoundImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: 70, // Adjust the size as needed
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}

class HoverIconButton extends StatefulWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;

  HoverIconButton({required this.icon, required this.tooltip, this.onPressed});

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

class _HoverIconButtonState extends State<HoverIconButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: IconButton(
        icon: Icon(widget.icon),
        color: _isHovering ? Colors.blue : Colors.black,
        onPressed: widget.onPressed,
        tooltip: widget.tooltip,
      ),
    );
  }
}
