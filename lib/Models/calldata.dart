class calldata{
  String AvatarUrl;
  String name;
  String status;
  bool iscall;

  calldata(
      {required this.name,
        required this.AvatarUrl,
        required this.status,
        required this.iscall});
}
List<calldata> calldta = [
  calldata(
      name: "Kratos Official",
      AvatarUrl: "assets/images/10.webp",
      status: "Incoming",
      iscall: true),
  calldata(
      name: "Damion",
      AvatarUrl: "assets/images/1.webp",
      status: "Missed",
      iscall: false),
  calldata(
      name: "Tara",
      AvatarUrl: "assets/images/2.webp",
      status: "Outgoing",
      iscall: true),
  calldata(
      name: "Kadence",
      AvatarUrl: "assets/images/3.webp",
      status: "Incoming",
      iscall: true),
  calldata(
      name: "Carlee",
      AvatarUrl: "assets/images/4.webp",
      status: "Missed",
      iscall: false),
  calldata(
      name: "Salvador",
      AvatarUrl: "assets/images/5.webp",
      status: "Outgoing",
      iscall: true),
  calldata(
      name: "Izayah",
      AvatarUrl: "assets/images/6.webp",
      status: "Incoming",
      iscall: true),
  calldata(
      name: "Mira",
      AvatarUrl: "assets/images/7.webp",
      status: "Missed",
      iscall: false),
  calldata(
      name: "Manuel",
      AvatarUrl: "assets/images/8.webp",
      status: "Outgoing",
      iscall: true),
];