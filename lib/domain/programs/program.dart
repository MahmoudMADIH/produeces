class Program {
  final int id;
  final String title;
  final String description;
  final String schedule;
  final String presenter;

  Program({
    required this.id,
    required this.title,
    required this.description,
    required this.schedule,
    required this.presenter,
  });

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      schedule: json['schedule'],
      presenter: json['presenter'],
    );
  }
}
