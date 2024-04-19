

class Users{
  String? id;
  String? name;
  String? userName;
  String? github_id;
  String? resume;
  List<Collaboration>? collab_id;
  Users({this.id, this.collab_id, this.name, this.userName, this.github_id, this.resume});




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




}

class TeamMember{
  String? id;
  String? name;

  TeamMember({this.id, this.name});

}
