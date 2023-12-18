class ProblemStatement {
  List<Results>? results;
  String? status;

  ProblemStatement({this.results, this.status});

  ProblemStatement.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Results {
  String? author;
  String? contributor;
  String? problemStatement;
  String? title;

  Results({this.author, this.contributor, this.problemStatement, this.title});

  Results.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    contributor = json['contributor'];
    problemStatement = json['problem_statement'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['contributor'] = this.contributor;
    data['problem_statement'] = this.problemStatement;
    data['title'] = this.title;
    return data;
  }
}