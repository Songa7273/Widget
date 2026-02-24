# AnimatedContainer Demo

**One-line description:** An expandable profile card that demonstrates Flutter's AnimatedContainer widget with smooth property transitions.

## Overview

This Flutter app showcases the **AnimatedContainer** widget through a real-world use case: an interactive profile card that expands and collapses when tapped, similar to what you'd find in social media or contact applications.

## Three Key Properties Demonstrated

### 1. **height**
- **What it does:** Controls the vertical size of the container
- **In this demo:** Smoothly animates from 150 pixels (collapsed) to 300 pixels (expanded)
- **Visual impact:** The card grows taller to reveal additional profile information

### 2. **decoration (BoxDecoration with borderRadius)**
- **What it does:** Defines the container's visual styling including borders and corner rounding
- **In this demo:** The border radius animates from 20 to 50, and the color changes from blue to deep purple
- **Visual impact:** The card's corners become much more rounded and the color smoothly transitions

### 3. **padding**
- **What it does:** Sets the internal spacing between the container's edges and its content
- **In this demo:** Animates from EdgeInsets.all(20) to EdgeInsets.all(30)
- **Visual impact:** Content gets more breathing room as the card expands, improving visual comfort

## How to Run

### Prerequisites
- Flutter SDK installed ([Install Flutter](https://docs.flutter.dev/get-started/install))
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)
- An Android/iOS emulator or physical device

### Steps
1. Clone this repository:
   ```bash
   git clone https://github.com/Songa7273/Widget.git
   cd Widget
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

4. Tap the profile card to see the AnimatedContainer in action!

## Screenshot

![AnimatedContainer Demo Screenshot](screenshot.png)

*The profile card in both collapsed and expanded states, showing the smooth AnimatedContainer transitions.*

## Code Structure

- `lib/main.dart` - Contains the complete demo implementation
- The `AnimatedContainer` widget is located in the `_ProfileCardDemoState` build method
- Key properties (height, decoration, padding) are controlled by the `_isExpanded` boolean state

## Features

- ✅ Smooth animation with 500ms duration and easeInOut curve
- ✅ Real-world expandable profile card UI pattern
- ✅ Clear demonstration of three AnimatedContainer properties
- ✅ Simple, easy-to-understand code (under 150 lines)
- ✅ Quick reference showing animated property values

## Learning Points

- **AnimatedContainer** automatically animates between property values when they change
- The `duration` property controls how long the animation takes
- The `curve` property defines the animation's acceleration pattern
- Any property that can be lerped (linearly interpolated) can be animated
- Combining multiple animated properties creates rich, fluid interactions

## Author

Created for Flutter widget demonstration assignment.

## License

This project is open source and available for educational purposes.
