class UpdateLocationAttributeRequest {
  final String locationId;
  final String attribute;
  final dynamic data;

  UpdateLocationAttributeRequest({
    required this.locationId,
    required this.attribute,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {attribute: data};
  }
}
