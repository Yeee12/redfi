class FlightFilterModel {
  String from;
  String to;
  String travelType;
  DateTime? departureDate;
  bool directOnly;
  bool nearbyAirports;
  String travelClass;
  int passengers;

  FlightFilterModel({
    this.from = '',
    this.to = '',
    this.travelType = 'One way',
    this.departureDate,
    this.directOnly = false,
    this.nearbyAirports = false,
    this.travelClass = 'Economy',
    this.passengers = 1,
  });
}