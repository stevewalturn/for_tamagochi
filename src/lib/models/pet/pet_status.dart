enum PetStatus {
  happy,
  hungry,
  sick,
  tired,
  dead;

  String get displayName {
    switch (this) {
      case PetStatus.happy:
        return 'Happy';
      case PetStatus.hungry:
        return 'Hungry';
      case PetStatus.sick:
        return 'Sick';
      case PetStatus.tired:
        return 'Tired';
      case PetStatus.dead:
        return 'Dead';
    }
  }

  String get emoji {
    switch (this) {
      case PetStatus.happy:
        return '😊';
      case PetStatus.hungry:
        return '🤤';
      case PetStatus.sick:
        return '🤒';
      case PetStatus.tired:
        return '😴';
      case PetStatus.dead:
        return '💀';
    }
  }
}
