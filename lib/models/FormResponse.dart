class FormResponse {
  Stat? stat;

  FormResponse({this.stat});

  FormResponse.fromJson(Map<String, dynamic> json) {
    stat = json['stat'] != null ? new Stat.fromJson(json['stat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stat != null) {
      data['stat'] = this.stat!.toJson();
    }
    return data;
  }
}

class Stat {
  bool? regestersuccess;
  int? idClinic;

  Stat({this.regestersuccess, this.idClinic});

  Stat.fromJson(Map<String, dynamic> json) {
    regestersuccess = json['regestersuccess'];
    idClinic = json['id_clinic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['regestersuccess'] = this.regestersuccess;
    data['id_clinic'] = this.idClinic;
    return data;
  }
}
