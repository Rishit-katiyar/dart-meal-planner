# 🍽️ Advanced Meal Planner 📅

Welcome to the Advanced Meal Planner! This Dart program helps you generate random meal plans based on dietary preferences and available ingredients. Whether you're a health-conscious individual, a busy parent, or a culinary enthusiast, the Advanced Meal Planner has got you covered!

## Features

- **User Authentication**: Simulated user authentication process ensures secure access to the meal planner.
- **Meal Planning**: Generate a customized meal plan for breakfast, lunch, and dinner.
- **Extensive Options**: Choose from a wide range of meal options for each meal category.
- **Easy to Use**: Simple and intuitive interface for a hassle-free experience.

## Installation

Follow these detailed steps to get started with the Advanced Meal Planner:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Rishit-katiyar/dart-meal-planner.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd dart-meal-planner
   ```

3. **Install dependencies** (ensure you have Dart SDK installed):
   ```bash
   pub get
   ```

4. **Troubleshooting Dependencies**:
   - If you encounter issues with package resolution, try updating your Dart SDK and pub:
     ```bash
     dart pub upgrade
     ```

   - Ensure that your Dart SDK is properly configured and accessible in your PATH environment variable.

## Usage

Once you have installed the project and its dependencies, follow these steps to run the Advanced Meal Planner:

1. **Run the program**:
   ```bash
   dart advanced_meal_planner.dart
   ```

2. **Authenticate**:
   - Enter your username and password when prompted to authenticate.

3. **View the meal plan**:
   - After successful authentication, the program will generate a personalized meal plan for you.

4. **Customize Meal Options**:
   - Want to add your favorite meals to the planner? Simply edit the `MealPlanner` class in the code and add your desired meals to the options.

5. **Save Your Meal Plans**:
   - To save your generated meal plans, you can implement a database or file storage system to persist the data.

## Troubleshooting

If you encounter any issues while using the Advanced Meal Planner, here are some troubleshooting commands you can try:

- **Clean Build**:
  ```bash
  dart clean
  ```

- **Check for Dart SDK Updates**:
  ```bash
  dart pub upgrade --dry-run
  ```

- **Reset Dependencies**:
  ```bash
  rm -rf .dart_tool/
  dart pub get
  ```

- **Verify Dart SDK Installation**:
  ```bash
  dart --version
  ```

## Contributions

We welcome contributions from the community to make the Advanced Meal Planner even better! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the GNU General Public License version 3 (GNU GPLv3) - see the [LICENSE](LICENSE) file for details.
