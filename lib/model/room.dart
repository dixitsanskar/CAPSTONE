class Room {
  Info? info;
  String? status;

  Room({this.info, this.status});

  Room.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
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

class Info {
  String? sId;
  String? problemId;
  String? roomId;
  String? roomName;
  String? roomToken;
  TeamMembers? teamMembers;
  // List<Null>? videocon;

  Info(
      {this.sId,
      this.problemId,
      this.roomId,
      this.roomName,
      this.roomToken,
      this.teamMembers,
      // this.videocon
      });

  Info.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    problemId = json['problem_id'];
    roomId = json['room_id'];
    roomName = json['room_name'];
    roomToken = json['room_token'];
    teamMembers = json['team_members'] != null
        ? new TeamMembers.fromJson(json['team_members'])
        : null;
    // if (json['videocon'] != null) {
    //   videocon = <Null>[];
    //   json['videocon'].forEach((v) {
    //     videocon!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['problem_id'] = this.problemId;
    data['room_id'] = this.roomId;
    data['room_name'] = this.roomName;
    data['room_token'] = this.roomToken;
    if (this.teamMembers != null) {
      data['team_members'] = this.teamMembers!.toJson();
    }
    // if (this.videocon != null) {
    //   data['videocon'] = this.videocon!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class TeamMembers {
  List<TeamDetails>? teamDetails;
  int? teamSize;

  TeamMembers({this.teamDetails, this.teamSize});

  TeamMembers.fromJson(Map<String, dynamic> json) {
    if (json['team_details'] != null) {
      teamDetails = <TeamDetails>[];
      json['team_details'].forEach((v) {
        teamDetails!.add(new TeamDetails.fromJson(v));
      });
    }
    teamSize = json['team_size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teamDetails != null) {
      data['team_details'] = this.teamDetails!.map((v) => v.toJson()).toList();
    }
    data['team_size'] = this.teamSize;
    return data;
  }
}

class TeamDetails {
  String? email;
  String? gitlink;
  String? name;
  String? username;

  TeamDetails({this.email, this.gitlink, this.name, this.username});

  TeamDetails.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    gitlink = json['gitlink'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['gitlink'] = this.gitlink;
    data['name'] = this.name;
    data['username'] = this.username;
    return data;
  }
}