class NearDoctorModel {
  final String name;
  final String role;
  final double distance;
  final String reviews;
  final String openTime;
  final String image;

  NearDoctorModel(
      {required this.name,
      required this.role,
      required this.distance,
      required this.reviews,
      required this.openTime,
      required this.image});
}

List<NearDoctorModel> nearDoctorLists = [
  NearDoctorModel(
      name: "Dr.Joseph Brositito",
      role: "Special Dentist",
      distance: 1.2,
      reviews: "4.8 (120 reviews)",
      openTime: "17:00",
      image: "dokter2.png"),
  NearDoctorModel(
      name: "Dr.Joseph Brositito",
      role: "Special Dentist",
      distance: 1.2,
      reviews: "4.8 (120 reviews)",
      openTime: "17:00",
      image: "dokter3.png"),
];
