class ScheduleListModel {
  final String name;
  final String role;
  final String openTime;
  final String image;
  final String dayOpen;

  ScheduleListModel(
      {required this.name,
      required this.role,
      required this.dayOpen,
      required this.openTime,
      required this.image});
}

List<ScheduleListModel> listSchedule = [
  ScheduleListModel(
      name: "Dr.Joseph Brostito",
      role: "Dentail Specialist",
      openTime: "11:00 - 12:00 AM",
      image: "dokter2.png",
      dayOpen: "Sunday,12 June"),
  ScheduleListModel(
      name: "Dr.Bressie Coleman",
      role: "Dentail Specialist",
      openTime: "11:00 - 12:00 AM",
      image: "dokter3.png",
      dayOpen: "Sunday,12 June"),
  ScheduleListModel(
      name: "Dr.Babe Didrikson",
      role: "Dentail Specialist",
      openTime: "11:00 - 12:00 AM",
      image: "dokter4.png",
      dayOpen: "Sunday,12 June"),
];
