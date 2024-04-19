import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  late String teamName;
  late List teamMembers;

  @override
  Widget build(BuildContext context) {

    teamMembers = [
      'Vishesh', 'Sanskar', 'Tanisha', 'Siddhant'
    ];
    teamName = 'Herobrine';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text("Dashboard",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                            return Text("${index+1}. ${teamMembers[index]}");
                          } )

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("${index+1}. ${teamMembers[index]}");
                              } )

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("${index+1}. ${teamMembers[index]}");
                              } )

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("${index+1}. ${teamMembers[index]}");
                              } )

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("${index+1}. ${teamMembers[index]}");
                              } )

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Team Name : " + teamName,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          Text("Team Members : ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: teamMembers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("${index+1}. ${teamMembers[index]}");
                              } )

                        ],
                      ),
                    ),
                  ),
                ),



              ],
            )
          ],
        ),
      ),

    );
  }
}
