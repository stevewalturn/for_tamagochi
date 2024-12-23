import 'package:flutter/material.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';
import 'package:for_tamagochi/utils/const/const.dart';

class PetStatsWidget extends StatelessWidget {
  final Pet pet;

  const PetStatsWidget({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildStatBar(
              'Health',
              pet.health,
              kcHealthColor,
              Icons.favorite,
            ),
            const SizedBox(height: 8),
            _buildStatBar(
              'Hunger',
              pet.hunger,
              kcHungerColor,
              Icons.restaurant,
            ),
            const SizedBox(height: 8),
            _buildStatBar(
              'Happiness',
              pet.happiness,
              kcHappinessColor,
              Icons.mood,
            ),
            const SizedBox(height: 8),
            _buildStatBar(
              'Energy',
              pet.energy,
              kcEnergyColor,
              Icons.battery_charging_full,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBar(
    String label,
    int value,
    Color color,
    IconData icon,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: color, size: 16),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '$value%',
              style: TextStyle(
                color: _getStatColor(value),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: value / 100,
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
            _getStatColor(value),
          ),
        ),
      ],
    );
  }

  Color _getStatColor(int value) {
    if (value <= PetConstants.criticalThreshold) {
      return kcHealthColor;
    } else if (value <= PetConstants.warningThreshold) {
      return kcHungryColor;
    } else {
      return kcHappyColor;
    }
  }
}
