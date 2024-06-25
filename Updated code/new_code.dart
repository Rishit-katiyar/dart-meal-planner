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

// Function to filter meal options based on dietary preferences
List<String> filterMeals(List<String> meals, String preferences) {
  return meals.where((meal) {
    if (preferences.contains("vegetarian")) {
      return !meal.contains("chicken") && !meal.contains("salmon");
    }
    if (preferences.contains("vegan")) {
      return !meal.contains("chicken") && !meal.contains("salmon") &&
             !meal.contains("yogurt") && !meal.contains("eggs");
    }
    if (preferences.contains("gluten-free")) {
      return !meal.contains("toast") && !meal.contains("pasta") && !meal.contains("naan");
    }
    return true;  // If no preferences, return all meals
  }).toList();
}

// Function to generate a random meal plan
List<String> generateMealPlan(String dietaryPreferences) {
  // Randomly select one option from each meal category
  final Random random = Random();

  // Filter meal options based on dietary preferences
  final List<String> filteredBreakfastOptions = filterMeals(breakfastOptions, dietaryPreferences);
  final List<String> filteredLunchOptions = filterMeals(lunchOptions, dietaryPreferences);
  final List<String> filteredDinnerOptions = filterMeals(dinnerOptions, dietaryPreferences);

  // Select a random meal from filtered options
  final String breakfast = filteredBreakfastOptions[random.nextInt(filteredBreakfastOptions.length)];
  final String lunch = filteredLunchOptions[random.nextInt(filteredLunchOptions.length)];
  final String dinner = filteredDinnerOptions[random.nextInt(filteredDinnerOptions.length)];

  // Return the generated meal plan
  return [breakfast, lunch, dinner];
}

void main() {
  print("Welcome to the Meal Planner!");
  
  // Get user input for dietary preferences and ingredients
  print("Please enter your dietary preferences (e.g., vegetarian, vegan, gluten-free):");
  final String dietaryPreferences = stdin.readLineSync()!.toLowerCase();
  
  print("Do you have any ingredients on hand? If yes, please list them (separated by commas). If not, just press enter.");
  final String? ingredientsInput = stdin.readLineSync();
  final List<String> ingredients = ingredientsInput?.split(',').map((e) => e.trim()).toList() ?? [];
  
  // Generate a meal plan based on user input
  final List<String> mealPlan = generateMealPlan(dietaryPreferences);
  
  // Display the generated meal plan
  print("\nHere's your meal plan for today:");
  print("- Breakfast: ${mealPlan[0]}");
  print("- Lunch: ${mealPlan[1]}");
  print("- Dinner: ${mealPlan[2]}");

  // Provide feedback on ingredients on hand
  if (ingredients.isNotEmpty) {
    print("\nBased on the ingredients you have, you can consider the following tweaks:");
    ingredients.forEach((ingredient) {
      print("- Add $ingredient to your meals if possible.");
    });
  } else {
    print("\nNo specific ingredients provided. Enjoy your meals as suggested!");
  }
}
