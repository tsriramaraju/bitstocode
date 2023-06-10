class Category {
  final String name;
  final String illustration;
  final String description;
  final String bigDescription;
  final List<Role> roles;

  const Category({
    required this.name,
    required this.illustration,
    required this.description,
    required this.bigDescription,
    required this.roles,
  });
}

enum ExperienceLevel {
  Beginner,
  Intermediate,
  Advanced,
  Expert,
}

class Role {
  final String name;
  final String illustration;
  final String smallDescription;
  final String avgSalary;
  final String description;
  final ExperienceLevel recommendedExperienceLevel;
  final List<String> techSkills;

  const Role({
    required this.name,
    required this.illustration,
    required this.smallDescription,
    required this.avgSalary,
    required this.description,
    required this.recommendedExperienceLevel,
    required this.techSkills,
  });
}
