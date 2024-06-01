class Availability{
  final bool online;
  final bool inStore;

  factory Availability.fromJson(Map<String,dynamic> json){
      return Availability(online: json['online'],
          inStore: json['inStore']);
  }
  Map<String, dynamic> toJson(){
    return {
      "online": online,
      "inStore": inStore
    };
  }


  Availability({required this.online, required this.inStore});}