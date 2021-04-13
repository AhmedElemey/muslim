class Ad3eya {
  int status;
  int statusCode;
  String message;
  Data data;

  Ad3eya({this.status, this.statusCode, this.message, this.data});

  Ad3eya.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<Ad3eyas> ad3eya;

  Data({this.ad3eya});

  Data.fromJson(Map<String, dynamic> json) {
    ad3eya = new List<Ad3eyas>();
    json['adayaApi'].forEach((v) {
      ad3eya.add(new Ad3eyas.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adayaApi'] = this.ad3eya.map((v) => v.toJson()).toList();
    return data;
  }
}

class Ad3eyas {
  int id;
  String title;
  String subtitile;

  Ad3eyas({this.id, this.title, this.subtitile});

  Ad3eyas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitile = json['subtitile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subtitile'] = this.subtitile;

    return data;
  }
}
