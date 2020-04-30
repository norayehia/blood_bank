class Donor {
  int id;
  String name;
  String age;
  String email;
  String address;
  String password;
  String type;

  Donor(
      {this.id,
        this.name,
        this.age,
        this.email,
        this.address,
        this.password,
        this.type});

  Donor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    email = json['email'];
    address = json['address'];
    password = json['password'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['email'] = this.email;
    data['address'] = this.address;
    data['password'] = this.password;
    data['type'] = this.type;
    return data;
  }
}