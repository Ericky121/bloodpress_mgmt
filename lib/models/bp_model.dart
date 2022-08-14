class BloodPressure {
  int? id;
  String? inputDate; // -- 측정일자
  int? diastolicBp; // -- 이완기 혈압
  int? systolicBp; // -- 수축기 혈압
  int? heartRate; // -- 심박수
  double? weight; // -- 체중

  BloodPressure({
    this.id,
    this.inputDate,
    this.diastolicBp,
    this.systolicBp,
    this.heartRate,
    this.weight
  });

  BloodPressure.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    inputDate = json['inputDate'];
    diastolicBp = json['diastolicBp'];
    systolicBp = json['systolicBp'];
    heartRate = json['heartRate'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['inputDate'] = this.inputDate;
    data['diastolicBp'] = this.diastolicBp;
    data['systolicBp'] = this.systolicBp;
    data['heartRate'] = this.heartRate;
    data['weight'] = this.weight;

    return data;
  }
}