import 'package:flutter/material.dart';

class PublishDetail extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<PublishDetail> {
  final TextEditingController authorController = TextEditingController();
  final TextEditingController workMailController = TextEditingController();
  final TextEditingController workOrganizationController =
      TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController problemStatementController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publish Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Author:'),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: authorController,
                        decoration: InputDecoration(
                          hintText: 'Enter author name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Work Organization:'),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: workOrganizationController,
                        decoration: InputDecoration(
                          hintText: 'Enter work organization',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Work Mail:'),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: workMailController,
                        decoration: InputDecoration(
                          hintText: 'Enter work mail',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Title:'),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: titleController,
                        decoration: InputDecoration(
                          hintText: 'Enter title',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Problem Statement:'),
            SizedBox(height: 10),
            Expanded(
              child: TextFormField(
                controller: problemStatementController,
                maxLines: 10, // Increased height
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Enter problem statement (5000 words)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Center(
                child: Container(
              width: 360,
              height: 35,
              decoration: ShapeDecoration(
                color: Color(0xFF0A2351),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Publish Now',
                    style: TextStyle(
                      color: Color(0xFFC8C8D0),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
