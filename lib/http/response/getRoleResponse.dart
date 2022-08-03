/// GRN Innovation : 11
/// Rite Foundation : 1

class GetRoleResponse {
  GetRoleResponse({
    int? gRNInnovation,
    int? riteFoundation,
  }) {
    _gRNInnovation = gRNInnovation;
    _riteFoundation = riteFoundation;
  }

  GetRoleResponse.fromJson(dynamic json) {
    _gRNInnovation = json['GRN Innovation'];
    _riteFoundation = json['Rite Foundation'];
  }
  int? _gRNInnovation;
  int? _riteFoundation;
  GetRoleResponse copyWith({
    int? gRNInnovation,
    int? riteFoundation,
  }) =>
      GetRoleResponse(
        gRNInnovation: gRNInnovation ?? _gRNInnovation,
        riteFoundation: riteFoundation ?? _riteFoundation,
      );
  int? get gRNInnovation => _gRNInnovation;
  int? get riteFoundation => _riteFoundation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['GRN Innovation'] = _gRNInnovation;
    map['Rite Foundation'] = _riteFoundation;
    return map;
  }
}
