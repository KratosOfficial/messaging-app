class chatdata {
  String name;
  String message;
  bool read;
  String avatarUrl;

  chatdata(
      {required this.name,
      required this.message,
      required this.read,
      required this.avatarUrl});
}

List<chatdata> chatdta = [
  chatdata(
      name: "Damion",
      message: "Hey, how are you?",
      read: true,
      avatarUrl: "assets/images/1.webp"),
  chatdata(
      name: "Tara",
      message: "send me the files",
      read: false,
      avatarUrl: "assets/images/2.webp"),
  chatdata(
      name: "Kadence",
      message: "prototype is ready",
      read: true,
      avatarUrl: "assets/images/3.webp"),
  chatdata(
      name: "Carlee",
      message: "I am waiting for you",
      read: false,
      avatarUrl: "assets/images/4.webp"),
  chatdata(
      name: "Salvador",
      message: "We need 4 changes",
      read: false,
      avatarUrl: "assets/images/5.webp"),
  chatdata(
      name: "Izayah",
      message: "Thanks for the support",
      read: true,
      avatarUrl: "assets/images/6.webp"),
  chatdata(
      name: "Mira",
      message: "I am waiting for you",
      read: false,
      avatarUrl: "assets/images/7.webp"),
  chatdata(
      name: "Manuel",
      message: "I am waiting for you",
      read: true,
      avatarUrl: "assets/images/8.webp"),
  chatdata(
      name: "Miya",
      message: "I am waiting for you",
      read: false,
      avatarUrl: "assets/images/9.webp"),
];
