import 'package:flutter/material.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';

class PetAnimationWidget extends StatefulWidget {
  final PetStatus status;
  final String name;

  const PetAnimationWidget({
    Key? key,
    required this.status,
    required this.name,
  }) : super(key: key);

  @override
  State<PetAnimationWidget> createState() => _PetAnimationWidgetState();
}

class _PetAnimationWidgetState extends State<PetAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _bounceAnimation = Tween<double>(
      begin: 0.0,
      end: 10.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: _bounceAnimation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _shouldAnimate ? _bounceAnimation.value : 0),
              child: child,
            );
          },
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: _getStatusColor(),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                widget.status.emoji,
                style: const TextStyle(fontSize: 60),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          widget.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.status.displayName,
          style: TextStyle(
            fontSize: 18,
            color: _getStatusColor(),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  bool get _shouldAnimate => widget.status != PetStatus.dead;

  Color _getStatusColor() {
    switch (widget.status) {
      case PetStatus.happy:
        return kcHappyColor;
      case PetStatus.hungry:
        return kcHungryColor;
      case PetStatus.sick:
        return kcSickColor;
      case PetStatus.tired:
        return kcTiredColor;
      case PetStatus.dead:
        return kcDeadColor;
    }
  }
}
