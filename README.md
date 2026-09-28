# 🎬 Movie App

A modern **Flutter Movie & TV Series application** built with **Flutter and Dart**, designed to provide users with a smooth experience for browsing and discovering movies and TV shows.

The application integrates with the **TMDB REST API** to retrieve dynamic movie and TV series data and displays it through a clean and user-friendly interface.

---

## 📱 About The Project

**Movie App** is a Flutter application developed to practice and demonstrate real-world mobile application development concepts such as:

* REST API integration
* State management using Cubit/Bloc
* Dynamic data rendering
* Responsive Flutter UI
* Navigation between application screens
* Loading and error state handling
* Reusable Flutter widgets

The project focuses on building a clean and maintainable Flutter application while working with real movie and TV series data.

---

## ✨ Features

* 🎬 Browse Movies
* 📺 Browse TV Series
* 🌐 Fetch dynamic content from TMDB API
* 🔄 Handle API loading and response states
* 🧠 Cubit/Bloc state management
* 🧭 Bottom navigation
* 📱 Responsive user interface
* 🧩 Reusable Flutter widgets
* 🚀 Smooth navigation between application sections

---

## 🛠️ Technologies & Packages

| Technology               | Usage                                         |
| ------------------------ | --------------------------------------------- |
| **Flutter**              | Cross-platform mobile application development |
| **Dart**                 | Programming language                          |
| **Flutter Bloc / Cubit** | State management                              |
| **HTTP**                 | REST API integration                          |
| **TMDB API**             | Movie and TV series data                      |
| **Salomon Bottom Bar**   | Bottom navigation                             |

---

## 🏗️ Project Structure

The project follows a structured Flutter architecture that separates application responsibilities and makes the code easier to maintain and extend.

```text
lib/
│
├── cubit/
│   ├── states/
│   └── cubit files
│
├── models/
│   └── data models
│
├── screens/
│   └── application screens
│
├── widgets/
│   └── reusable widgets
│
├── services/
│   └── API and network services
│
└── main.dart
```

---

## 🔌 API Integration

The application uses the **TMDB API** to retrieve movie and TV series information.

The API integration allows the application to work with dynamic data instead of relying on static content.

### API Flow

```text
TMDB API
   ↓
HTTP Request
   ↓
JSON Response
   ↓
Model Parsing
   ↓
Cubit / Bloc
   ↓
Flutter UI
```

---

## 🎨 User Interface

The application provides a clean and responsive interface designed to make browsing movie and TV content simple and enjoyable.

The UI is built using reusable Flutter widgets to reduce code duplication and make future changes easier.

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/mailaymanis/movie_app.git
```

### 2. Navigate to the Project

```bash
cd movie_app
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Run the Application

```bash
flutter run
```

---

## 🔑 TMDB API Configuration

This project uses the **TMDB API** to retrieve movie and TV series data.

To run the project with your own API configuration:

1. Create a TMDB account.
2. Generate your API credentials.
3. Add the required API configuration to the project.
4. Run the application.

> **Important:** Never commit private API credentials or secret keys directly to a public repository.

---

## 📚 What I Learned

Through this project, I practiced and improved my skills in:

* Flutter application development
* Dart programming
* REST API integration
* JSON parsing
* Cubit/Bloc state management
* API loading and error handling
* Responsive UI development
* Reusable widget development
* Application navigation
* Working with external APIs

---

## 🔮 Future Improvements

Possible improvements for future versions:

* 🔍 Add movie and TV search
* ❤️ Add favorites
* 🌙 Add advanced theme customization
* 🔐 Add user authentication

---

## ⭐ Support

If you find this project useful or interesting, consider giving it a ⭐ on GitHub.

---

<p align="center">
  Built with ❤️ using Flutter & Dart
</p>
