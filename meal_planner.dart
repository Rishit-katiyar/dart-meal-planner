import 'dart:io';
import 'dart:math';

// Define meal options for each meal category
final List<String> breakfastOptions = [
  "Oatmeal with fruit",
  "Scrambled eggs with toast",
  "Yogurt with granola",
  "Smoothie with spinach and banana",
];

final List<String> lunchOptions = [
  "Vegetable stir-fry with rice",
  "Grilled chicken salad",
  "Quinoa and black bean bowl",
  "Pasta primavera",
];

final List<String> dinnerOptions = [
  "Grilled salmon with roasted vegetables",
  "Vegetable curry with naan bread",
  "Tofu stir-fry with noodles",
  "Baked chicken with sweet potatoes",
];

// Function to generate a random meal plan
List<String> generateMealPlan() {
  // Randomly select one option from each meal category
  final Random random = Random();
  final String breakfast = breakfastOptions[random.nextInt(breakfastOptions.length)];
  final String lunch = lunchOptions[random.nextInt(lunchOptions.length)];
  final String dinner = dinnerOptions[random.nextInt(dinnerOptions.length)];
  
  // Return the generated meal plan
  return [breakfast, lunch, dinner];
}

void main() {
  print("Welcome to the Meal Planner!");
  
  // Get user input for dietary preferences and ingredients
  print("Please enter your dietary preferences (e.g., vegetarian, vegan, gluten-free):");
  final String dietaryPreferences = stdin.readLineSync()!;
  
  print("Do you have any ingredients on hand? If yes, please list them (separated by commas). If not, just press enter.");
  final String? ingredientsInput = stdin.readLineSync();
  final List<String> ingredients = ingredientsInput?.split(',') ?? [];
  
  // Generate a meal plan based on user input
  final List<String> mealPlan = generateMealPlan();
  
  // Display the generated meal plan
  print("\nHere's your meal plan for today:");
  print("- Breakfast: ${mealPlan[0]}");
  print("- Lunch: ${mealPlan[1]}");
  print("- Dinner: ${mealPlan[2]}");
}
