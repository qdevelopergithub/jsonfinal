import 'dart:convert';

Sample sampleFromJson(String str) {
  final jsonData = json.decode(str);
  return Sample.fromJson(jsonData);
}

String sampleToJson(Sample data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

//******************************************************************************
class Sample {
  int formatVersion;
  String id;
  SampleIdeas ideas;

  Sample({
    this.formatVersion,
    this.id,
    this.ideas,
  });

  factory Sample.fromJson(Map<String, dynamic> json) =>
      new Sample(
        formatVersion: json["formatVersion"],
        id: json["id"],
        ideas: SampleIdeas.fromJson(json["ideas"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "formatVersion": formatVersion,
        "id": id,
        "ideas": ideas.toJson(),
      };
}

//******************************************************************************
class SampleIdeas {
  ParentNode parentNode;

  SampleIdeas({
    this.parentNode,
  });

  factory SampleIdeas.fromJson(Map<String, dynamic> json) =>
      new SampleIdeas(
        parentNode: ParentNode.fromJson(json["ParentNode"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "ParentNode": parentNode.toJson(),
      };
}


//******************************************************************************
class ParentNode {
  String title;
  int id;
  ParentNodeIdeas ideas;

  ParentNode({
    this.title,
    this.id,
    this.ideas,
  });

  factory ParentNode.fromJson(Map<String, dynamic> json) =>
      new ParentNode(
        title: json["title"],
        id: json["id"],
        ideas: ParentNodeIdeas.fromJson(json["ideas"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "title": title,
        "id": id,
        "ideas": ideas.toJson(),
      };
}

//******************************************************************************
class ParentNodeIdeas {
  Childnode1 childnode1;
  Childnode2 childnode2;

  ParentNodeIdeas({
    this.childnode1,
    this.childnode2,
  });

  factory ParentNodeIdeas.fromJson(Map<String, dynamic> json) =>
      new ParentNodeIdeas(
        childnode1: Childnode1.fromJson(json["Childnode1"]),
        childnode2: Childnode2.fromJson(json["Childnode2"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "Childnode1": childnode1.toJson(),
        "Childnode2": childnode2.toJson(),
      };
}

//******************************************************************************
class Childnode1 {
  String title;
  int id;

  Childnode1({
    this.title,
    this.id,
  });

  factory Childnode1.fromJson(Map<String, dynamic> json) =>
      new Childnode1(
        title: json["title"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() =>
      {
        "title": title,
        "id": id,
      };
}

//******************************************************************************
class Childnode2 {
  String title;
  int id;
  Childnode2Ideas ideas;

  Childnode2({
    this.title,
    this.id,
    this.ideas,
  });

  factory Childnode2.fromJson(Map<String, dynamic> json) =>
      new Childnode2(
        title: json["title"],
        id: json["id"],
        ideas: Childnode2Ideas.fromJson(json["ideas"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "title": title,
        "id": id,
        "ideas": ideas.toJson(),
      };
}



//******************************************************************************
class Childnode2Ideas {
  Childnode2Ideas();

  factory Childnode2Ideas.fromJson(Map<String, dynamic> json) =>
      new Childnode2Ideas(
      );

  Map<String, dynamic> toJson() =>
      {
      };
}
