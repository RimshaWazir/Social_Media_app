class UserStory {
  UserStory({
    required this.id,
    required this.name,
    required this.img,
    required this.online,
    required this.story,
  });

  int id;
  String name;
  String img;
  String online;
  String story;

  factory UserStory.fromJson(Map<String, dynamic> json) => UserStory(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        online: json["online"],
        story: json["story"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "online": online,
        "story": story,
      };
}
