import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image filling the top quarter
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 4,
            child: Image.asset(
              'assets/images/5.jpg', // Path to your background image
              fit: BoxFit.cover,
            ),
          ),
          // White container filling three-quarters with rounded top edges
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lakes',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Experiences',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$250',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 111, 219, 243),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              20), // Spacer between headings and additional content
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 111, 219, 243),
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Yosemite National Park',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 111, 219, 243),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8), // Spacer before rating section
                      Row(
                        children: [
                          Icon(Icons.star,
                              size: 20, color: Colors.black), // Filled star
                          Icon(Icons.star,
                              size: 20, color: Colors.black), // Filled star
                          Icon(Icons.star,
                              size: 20, color: Colors.black), // Filled star
                          Icon(Icons.star,
                              size: 20, color: Colors.black), // Filled star
                          Icon(Icons.star,
                              size: 20, color: Colors.grey), // Empty star
                          SizedBox(width: 4),
                          Text(
                            '(5.0)',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Spacer before description
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8), // Spacer above description text
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed ipsum ante. Aenean commodo augue eu augue interdum, eget tristique elit scelerisque. Phasellus tincidunt nunc vitae est vulputate, a fermentum ex semper. Sed congue tincidunt tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed ipsum ante. Aenean commodo augue eu augue interdum, eget tristique elit scelerisque. Phasellus tincidunt nunc vitae est vulputate, a fermentum ex semper. Sed congue tincidunt tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed ipsum ante. Aenean commodo augue eu augue interdum, eget tristique elit scelerisque. Phasellus tincidunt nunc vitae est vulputate, a fermentum ex semper. Phasellus tincidunt nunc vitae est vulputate, a fermentum ex semper. Sed congue tincidunt tempor.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20), // Spacer before button
                      Container(
                        width: double.infinity, // Full width button
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(32), // Rounded corners
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(
                                255, 111, 219, 243), // Background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Book Your Experince',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Top left FloatingActionButton
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black, // Icon color set to black for contrast
              ),
            ),
          ),
          // Top right FloatingActionButton
          Positioned(
            top: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Handle button press
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.more_vert,
                color: Colors.black, // Icon color set to black for contrast
              ),
            ),
          ),
        ],
      ),
    );
  }
}
