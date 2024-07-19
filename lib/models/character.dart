class Character {
  final String name;
  final String imageUrl;
  final int strength;
  final int magic;
  final int speed;
  int totalReviews = 0;
  int totalStars = 0;
  int get averageStars => (totalReviews == 0) ? 0 : totalStars ~/ totalReviews;

  Character(
    this.name,
    this.imageUrl,
    this.strength,
    this.magic,
    this.speed,
  );
}
