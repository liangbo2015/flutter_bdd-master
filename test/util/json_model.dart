class JsonModelDemo {
  String iNPUserName;
  String lBLGreetting;
  String bTNContinue;

  JsonModelDemo({this.iNPUserName, this.lBLGreetting, this.bTNContinue});

  JsonModelDemo.fromJson(Map<String, dynamic> json) {
    iNPUserName = json['INP_UserName'];
    lBLGreetting = json['LBL_greetting'];
    bTNContinue = json['BTN_Continue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['INP_UserName'] = this.iNPUserName;
    data['LBL_greetting'] = this.lBLGreetting;
    data['BTN_Continue'] = this.bTNContinue;
    return data;
  }
}