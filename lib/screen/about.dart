import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 300,
            height: double.infinity,
            color: Colors.black, // Added a background color for visibility
            child: SizedBox(width: 300),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 95,),
             
                  Text(
                    'Capstone Platform',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
              Text('Mission Statement',style: TextStyle(fontWeight: FontWeight.bold),),
              Text(style: TextStyle(fontStyle: FontStyle.italic),
                'At Capstone, we believe in transforming higher education through collaborative learning experiences. Our mission is to provide a seamless and integrated platform that empowers students to collaborate on projects, fostering creativity, critical thinking, and teamwork.',
              ),
              SizedBox(height: 16.0),
               Text('Who We Are\n',style: TextStyle(fontWeight: FontWeight.bold),),

              Text(
                'Capstone is a dedicated team of educators, developers, and visionaries committed to redefining the way students engage with their academic coursework. With a passion for innovation and a focus on enhancing the learning journey, we have crafted a platform that goes beyond traditional education boundaries.',
              style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16.0),
                            Text('Our Features',style: TextStyle(fontWeight: FontWeight.bold),),

              Text(
                
                '1. Collaboration Hub\n'
                'Connect with classmates, share ideas, and work together seamlessly. Our collaboration hub is designed to facilitate communication and teamwork, creating a virtual space for students to thrive.\n'
                '2. Project Management Tools\n'
                'Stay organized with intuitive project management tools. Track progress, set milestones, and ensure everyone is on the same page throughout the project lifecycle.\n'
                '3. Resource Library\n'
                'Access a wealth of educational resources curated specifically for your projects. From articles to multimedia content, our library enhances your learning experience.\n'
                '4. Real-Time Feedback\n'
                'Receive instant feedback from peers and educators to refine your work. Our platform encourages constructive criticism and collaboration, fostering continuous improvement.\n'
                '5. Cross-Disciplinary Integration\n'
                'Break down silos and collaborate across disciplines. Capstone promotes interdisciplinary learning, allowing students from different majors to bring unique perspectives to each project.',
              style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16.0),
                            Text('Why Choose Capstone?',style: TextStyle(fontWeight: FontWeight.bold),),

              Text(
                
                'User-Friendly Interface: Our platform is designed with simplicity in mind, ensuring an easy and enjoyable user experience.\n'
                'Security and Privacy: Your data is important to us. Capstone prioritizes security measures to protect your information and provide a safe online environment.\n'
                'Innovation in Education: We are at the forefront of educational technology, constantly evolving to meet the dynamic needs of modern learners and educators.',
              style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16.0),
              // Text(
              //   'Join Us in Transforming Education\n'
              //   'Become part of the Capstone community and embark on a journey of collaborative learning, innovation, and academic excellence. Whether you\'re a student, educator, or institution, we invite you to experience the future of higher education with us.',
              // style: TextStyle(fontStyle: FontStyle.italic),
              // ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),

                    onPressed: () {
                      // Sign Up logic
                    },
                    child: Text('Sign Up'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // Learn More logic
                    },
                    child: Text('Learn More'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // Contact Us logic
                    },
                    child: Text('Contact Us'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
                            Text('Details:',style: TextStyle(fontWeight: FontWeight.bold),),

                  Text(
                    
                    'Tanisha Bhatt (2100320120172)\n'
                    'Sanskar Dixit (2100320120148)\n'
                    'Sahil Salim (2100320120147)',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 300,
            height: double.infinity,
            color: Colors.black, // Added a background color for visibility
            child: SizedBox(width: 300),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: AboutUs()));
}
