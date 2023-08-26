## Flutter Pokémons Viewer and Shape Changer with clean architecture

Welcome to the Pokémons Viewer and Shape Changer app! This project is a Flutter application with multiple screens, data fetching, and interactive UI elements. In this project, you will find the following features:

1. **Pokémon List Page:** Display a list of Pokémon fetched from an API.
2. **Shape Display Page:** Show three shapes and allow users to change the main displayed shape by clicking on one of them.

## Getting Started

Follow the instructions below to set up the project on your local machine and start working on it.

### Prerequisites

- Flutter SDK: Flutter (Channel stable, 3.13.1) is required for this project. Make sure you have Flutter installed at this version. If not, you can download and install it from the [official Flutter website](https://docs.flutter.dev/get-started/install).
- Git: You'll need Git to clone the project repository.

### Installation

1. **Clone the Repository:**
```
git clone https://github.com/EyadAbuKm/Poke.git
```
```
cd poke
```


3. **Install Dependencies:**
```
flutter pub get
```


5. **Run the App:**
```
flutter run
```


## Features

### Pokémon List Page

On this page, the app will fetch a list of Pokémon from an API and display them in a scrollable list with pagination. Each list item should include the Pokémon's name, image.

- [ ] Fetch Pokémon data from an API (you can use the [PokéAPI](https://pokeapi.co/)).
- [ ] Display a list of Pokémon with their names and images.

### Shape Display Page

This page displays three shapes. When a user taps on one of the shapes, the main displayed shape on the screen should change to the selected shape with animation.

- [ ] Display a circle, a square, and a square with a circular border on the screen.
- [ ] Implement interactive functionality: tapping on a shape changes the main displayed shape.

## Guidelines

Throughout the project, the following guidelines are met:

- **Code Quality:** The code is clean, well-structured, and adheres to best practices for maintainability.
  
- **Separation of Concerns:** Utilize Flutter's widget system and select a suitable architecture (GetX) to ensure clear separation between different aspects of the application.

- **Clear Comments:** I've provided descriptive comments for intricate logic or components, offering insight into their functionality. This aids reviewers in comprehending my thought process and the code's execution.


Feel free to adopt, modify, and reuse this project structure for future undertakings. By eliminating any unwanted modules and adjusting routing to align with the new project's needs, this template can be effortlessly repurposed.


## Conclusion

If you have any inquiries or need further assistance, don't hesitate to contact me at eyadabukm@gmail.com.




