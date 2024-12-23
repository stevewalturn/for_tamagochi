import 'package:stacked/stacked_annotations.dart';

class AnalyticService {
  Future<void> init() async {
    // Initialize analytics service
    try {
      // Add analytics initialization here
    } catch (e) {
      // Log error but don't throw to prevent app crash
      print('Failed to initialize analytics: $e');
    }
  }

  void logPetCreated(String petName) {
    try {
      // Log pet creation event
    } catch (e) {
      // Silently handle analytics error
      print('Failed to log pet created: $e');
    }
  }

  void logPetAction(String action) {
    try {
      // Log pet action event
    } catch (e) {
      // Silently handle analytics error
      print('Failed to log pet action: $e');
    }
  }

  void logPetStatus(String status) {
    try {
      // Log pet status change event
    } catch (e) {
      // Silently handle analytics error
      print('Failed to log pet status: $e');
    }
  }
}
