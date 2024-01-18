class Data {
  String id;
  String emailId;
  String password;

  Data({required this.id, required this.emailId, required this.password});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      emailId: json['email_id'],
      password: json['password'],
    );
  }
}
class MyData {
  String result;
  List<Data> data;

  MyData({required this.result, required this.data});

  factory MyData.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Data> data = dataList.map((item) => Data.fromJson(item)).toList();

    return MyData(
      result: json['result'],
      data: data,
    );
  }
}
