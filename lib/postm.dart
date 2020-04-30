class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}




/*class donor {
  final int id;
  final String address;
  final String type;


  donor({this.id, this.address, this.type});

  factory donor.fromJson(Map<String, dynamic> json) {
    return donor(
      id: json['id'],
          address: json['address'],
      type: json['type'],

    );
  }
}*/