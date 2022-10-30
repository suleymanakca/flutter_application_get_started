class User {
  String? name;
  String? descripton;
  String? url;

  User(this.name, this.descripton, this.url);

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    descripton = json['descripton'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['descripton'] = descripton;
    data['url'] = url;
    return data;
  }
}
