class ChatRoomModel {
  String? chatroomid; //booking id
  List<String>? participants; //user id and partipants

  ChatRoomModel({this.chatroomid, this.participants});

  ChatRoomModel.fromMap(Map<String, dynamic> map) {
    chatroomid = map["chatroomid"];
    participants = map["participants"];
  }

  Map<String, dynamic> toMap() {
    return {"chatroomid": chatroomid, "participants": participants};
  }
}
