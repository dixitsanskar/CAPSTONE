

import 'package:cloud_firestore/cloud_firestore.dart';

class Users{
  String? id;
  String? name;
  String? userName;
  String? github_id;
  String? resume;
  List<Collaboration>? collab_id;
  Users({this.id, this.collab_id, this.name, this.userName, this.github_id, this.resume});

  Map<String, dynamic> tomap() {
    return {
      'id': id,
      'collab_id': collab_id,
      'name': name,
      'userName': userName,
      'github_id': github_id,
      'resume': resume,
    };

  }

  Users.fromMap(DocumentSnapshot snapshot){
    Map<String,dynamic> data = snapshot.data() as Map<String,dynamic>;
    id = data['id'];
    collab_id = List<Collaboration>.from(data['collab_id']?.map((e)=> Collaboration.fromMap(e)));
    name = data['name']??"";
    userName = data['userName']??"";
    github_id = data['github_id']??"";
    resume = data['resume']??"";

  }

}

class Collaboration{
  String? id;
  String? project_id;
  String? team_name;
  String? team_member_no;
  List<TeamMember>? teammembers;
  String? status;
  String? timeStamp;
  Collaboration({ this.id, this.project_id, this.status, this.team_member_no, this.team_name, this.teammembers, this.timeStamp });



  Map<String, dynamic> tomap() {
    return {
      'id': id,
      'project_id': project_id,
      'status': status,
      'team_member_no': team_member_no,
      'team_name': team_name,
      'teammembers': teammembers,
      'timeStamp': timeStamp,

    };

  }

  Collaboration.fromMap(DocumentSnapshot snapshot){
    Map<String,dynamic> data = snapshot.data() as Map<String,dynamic>;
    id = data['id'];
    project_id = data['project_id']??"";
    status = data['status']??"";
    team_member_no = data['team_member_no']??"";
    team_name = data['team_name']??"";
    teammembers = List<TeamMember>.from(data['teammembers']?.map((e)=> TeamMember.fromMap(e)));
    timeStamp = data['timeStamp']??"";

  }

}

class TeamMember{
  String? id;
  String? name;

  TeamMember({this.id, this.name});

  Map<String, dynamic> tomap() {
    return {
      'id': id,
      'name': name,
    };

  }

  TeamMember.fromMap(DocumentSnapshot snapshot){
    Map<String,dynamic> data = snapshot.data() as Map<String,dynamic>;
    id = data['id'];
    name = data['name']??"";
  }

}
