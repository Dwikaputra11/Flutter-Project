class Job {
  final String id;
  final String title;
  final String description;
  final String timeRelease;
  final String location;
  final bool isFavorite;
  
  Job({
    required this.id,
    required this.title,
    required this.description,
    required this.timeRelease,
    required this.location,
    required this.isFavorite,
  });
}
