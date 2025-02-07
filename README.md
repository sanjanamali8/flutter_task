# Flutter Visulatization App with Flask Backend

The application takes static data from a Flask backend and visulaized it on the UI with fl_chart library.

# Features
Data Visualization -
   1. Radar chart
   2. Pie Chart
   3. Line Chart

## Getting Started

# Tech Stack

Frontend: Flutter
State Management: GetX
Charting Library: fl_chart
Backend: Flask (with static data)

# Folder Structure 

```bash
flutter_task/
│
├── lib/
│   ├── main.dart   # Main entry point for the Flutter app
│   ├── backend/
│   │   └── flask_backend.py  # Flask backend file with static data
│   ├── controller/
│   │   └── app_controller.dart # AppController managing app state and data fetching
│   ├── data.dart               # DataScreen for displaying charts

```

# Prerequisites

1. Flutter SDK
2. Python 3.x
3. Required Python packages: Flask
4. Physical Device or Emulator

# Setup

1. Clone the repository
```bash
git clone https://github.com/sanjanamali8/flutter_task
cd flutter_task
```
2. Install Flask and flask-cors
```bash
pip3 install flask
pip3 install flask-cors
```
3. Run the flask_backend.py file
4. Install required flutter packages
    flutter pub get
5. To run the app change the URL in app_controller.dart as follows -
```bash
Emulator - http://10.0.2.2:5001/get_data
Web browser - http://localhost:5001/get_data
```
5. Run the Frontend Flutter app through terminal or from IDE-
```bash
flutter run
```

# Usage

1. Launch the Flutter application on your emulator or device.
2. Click the Fetch Data button on the main screen.
3. The app will fetch data from the Flask backend and display it on the Data Visualization screen using Radar, Pie, and Line charts.
4. Use the back button to return to the main screen and fetch data again.
