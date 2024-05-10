class UserData{
  user? info;
  String? status;

  UserData({this.info, this.status});
   UserData.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new user.fromJson(json['info']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    data['status'] = this.status;
    return data;
  }



}


class user {
  String? email;
  String? gitlink;
  String? id;
  String? linlink;
  String? name;
  String? username;
  List<Project>? projects=[];

  user(
      {this.email,
      this.gitlink,
      this.id,
      this.linlink,
      this.name,
      this.username,
      required this.projects
      });

  user.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    gitlink = json['gitlink'];
    id = json['id'];
    linlink = json['linlink'];
    name = json['name'];
    username = json['username'];
    projects = List<Project>.from(json['commentSection']?.map(
            (commentSection) => Project.fromJson(commentSection),
          ) ??
          []);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['gitlink'] = this.gitlink;
    data['id'] = this.id;
    data['linlink'] = this.linlink;
    data['name'] = this.name;
    data['username'] = this.username;
    data['projects']= this.projects;
    return data;
  }


}


class Project {
  String id;
  String problemID;
  String token;
  String status;

  Project({
    required this.id,
    required this.problemID,
    required this.token,
    this.status = 'Planning',
  });

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'project_id': problemID,
      'ptoken': token,
      'status': status,
    };
  }

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['_id'],
      problemID: json['project_id'],
      token: json['ptoken'],
      status: json['status'] ?? 'Planning',
    );
  }
}