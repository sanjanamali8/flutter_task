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

flutter_task/
│
├── lib/
│   ├── main.dart   # Main entry point for the Flutter app
|   ├── backend/
|   │   └── flask_backend.py  # Flask backend file with static data
│   ├── controller/
│   │   └── app_controller.dart # AppController managing app state and data fetching
│   ├── data.dart               # DataScreen for displaying charts

# Prerequisites

Flutter SDK
Python 3.x
Required Python packages: Flask
Physical Device or Emulator

# Setup

1. Clone the repository
    git clone https://github.com/sanjanamali8/flutter_task
    cd flutter_task
2. Install Flask
    pip3 install flask
3. Run the flask_backend.py file
4. Install required flutter packages
    flutter pub get
5. Run the Frontend Flutter app -
    i. flutter run
   ii. Run from IDE

# Usage

1. Launch the Flutter application on your emulator or device.
2. Click the Fetch Data button on the main screen.
3. The app will fetch data from the Flask backend and display it on the Data Visualization screen using Radar, Pie, and Line charts.
4. Use the back button to return to the main screen and fetch data again.