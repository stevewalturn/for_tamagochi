import 'package:flutter/material.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';

class PetActionsWidget extends StatelessWidget {
  final VoidCallback onFeed;
  final VoidCallback onPlay;
  final VoidCallback onSleep;
  final PetStatus petStatus;

  const PetActionsWidget({
    Key? key,
    required this.onFeed,
    required this.onPlay,
    required this.onSleep,
    required this.petStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDead = petStatus == PetStatus.dead;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ActionButton(
            icon: Icons.restaurant,
            label: 'Feed',
            color: kcHungerColor,
            onPressed: isDead ? null : onFeed,
          ),
          _ActionButton(
            icon: Icons.sports_esports,
            label: 'Play',
            color: kcHappinessColor,
            onPressed: isDead ? null : onPlay,
          ),
          _ActionButton(
            icon: Icons.bedtime,
            label: 'Sleep',
            color: kcEnergyColor,
            onPressed: isDead ? null : onSleep,
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onPressed;

  const _ActionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
          ),
          child: Icon(
            icon,
            size: 32,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: onPressed == null ? Colors.grey : Colors.black87,
          ),
        ),
      ],
    );
  }
}
