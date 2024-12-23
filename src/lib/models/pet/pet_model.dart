import 'package:equatable/equatable.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';

class Pet extends Equatable {
  final String id;
  final String name;
  final int health;
  final int hunger;
  final int happiness;
  final int energy;
  final DateTime lastFed;
  final DateTime lastPlayed;
  final DateTime lastSlept;
  final PetStatus status;

  const Pet({
    required this.id,
    required this.name,
    required this.health,
    required this.hunger,
    required this.happiness,
    required this.energy,
    required this.lastFed,
    required this.lastPlayed,
    required this.lastSlept,
    required this.status,
  });

  Pet copyWith({
    String? id,
    String? name,
    int? health,
    int? hunger,
    int? happiness,
    int? energy,
    DateTime? lastFed,
    DateTime? lastPlayed,
    DateTime? lastSlept,
    PetStatus? status,
  }) {
    return Pet(
      id: id ?? this.id,
      name: name ?? this.name,
      health: health ?? this.health,
      hunger: hunger ?? this.hunger,
      happiness: happiness ?? this.happiness,
      energy: energy ?? this.energy,
      lastFed: lastFed ?? this.lastFed,
      lastPlayed: lastPlayed ?? this.lastPlayed,
      lastSlept: lastSlept ?? this.lastSlept,
      status: status ?? this.status,
    );
  }

  factory Pet.initial(String name) {
    final now = DateTime.now();
    return Pet(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      health: 100,
      hunger: 100,
      happiness: 100,
      energy: 100,
      lastFed: now,
      lastPlayed: now,
      lastSlept: now,
      status: PetStatus.happy,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        health,
        hunger,
        happiness,
        energy,
        lastFed,
        lastPlayed,
        lastSlept,
        status,
      ];
}
