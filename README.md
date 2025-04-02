<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/4a97bae8-af8d-44d3-bb92-b5226dab348c" alt="Screenshot 1" style="width: 100%;"/>
</div>

# Flutter Widget Extensions

A lightweight library offering extensions for Flutter widgets and `BuildContext` to simplify tasks like alignment, padding, navigation, and more. These extensions reduce boilerplate, enhance readability, and streamline your widget code.

## Table of Contents

- [Getting Started](#getting-started)
- [Before and After Examples](#before-and-after-examples)
  - [1. Alignment Example](#1-alignment-example)
  - [2. Padding Example](#2-padding-example)
  - [3. Navigation Example](#3-navigation-example)
  - [4. Gesture Example](#4-gesture-example)
  - [5. SizedBox Example](#5-sizedbox-example)
  - [6. Cubit Example](#6-cubit-example)
  - [7. Media Query Example](#7-media-query-example)
- [Available Extensions](#available-extensions)

## Getting Started

To use these extensions in your Flutter project:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/MAHMOUDELSAYED7/Flutter-extensions.git
   ```
2. **Navigate to the Directory**:
   ```bash
   cd Flutter-extensions
   ```
3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

Explore the extensions in the `lib/extensions/` folder and integrate them into your project.

## Before and After Examples

These examples showcase how the extensions simplify Flutter code. Each includes a **Before** (traditional) and **After** (extension-based) version with a brief explanation.

### 1. Alignment Example
#### Before
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Align(
      alignment: Alignment.bottomRight,
      child: Text('Bottom Right'),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Text('Bottom Right').alignBottomRight(),
  );
}
```

**Explanation**: `alignBottomRight()` removes the need for an `Align` widget, reducing nesting.

---

### 2. Padding Example
#### Before
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Text('Symmetric Padding'),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Text('Symmetric Padding').withSymmetricPadding(vertical: 10.0, horizontal: 20.0),
  );
}
```

**Explanation**: `withSymmetricPadding()` replaces `Padding`, improving readability with named parameters.

---

### 3. Navigation Example
#### Before
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => NextPage()),
        );
      },
      child: Text('Next Page'),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: ElevatedButton(
      onPressed: () => context.push(NextPage()),
      child: Text('Next Page'),
    ),
  );
}
```

**Explanation**: `push()` simplifies navigation by abstracting `Navigator` boilerplate.

---

### 4. Gesture Example
#### Before
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: GestureDetector(
      onTap: () {
        print('Tapped the icon');
      },
      child: Icon(Icons.star),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Icon(Icons.star).onTap(() => print('Tapped the icon')),
  );
}
```

**Explanation**: `onTap()` replaces `GestureDetector`, making tap handling more concise.

---

### 5. SizedBox Example
#### Before
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: SizedBox(
      width: 80.0,
      height: 80.0,
      child: Container(color: Colors.blue),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(color: Colors.blue).withSquareSize(80.0),
  );
}
```

**Explanation**: `withSquareSize()` eliminates `SizedBox`, setting a square size directly.

---

### 6. Cubit Example
#### Before
```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
}

// Usage
BlocProvider.of<CounterCubit>(context).increment();

```

#### After
```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
}

// Simplified usage
context.cubit<CounterCubit>().increment();
         
```

**Explanation**: `cubit<T>()` simplifies Cubit access, replacing verbose `BlocProvider.of<T>`.

---

### 7. Media Query Example
#### Before
```dart
Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Scaffold(
    body: Container(
      width: screenWidth * 0.5,
      height: 100,
      color: Colors.green,
      child: Text('Half Width Container'),
    ),
  );
}
```

#### After
```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      width: context.width * 0.5,
      height: 100,
      color: Colors.green,
      child: Text('Half Width Container'),
    ),
  );
}
```

**Explanation**: `context.width` provides direct screen width access, skipping `MediaQuery`.

---

## Available Extensions

Here’s a concise overview of the extensions provided:

- **Alignment**: `center()`, `alignBottomRight()`, etc., for easy widget alignment.
- **Padding**: `withPadding()`, `withSymmetricPadding()`, etc., for flexible padding.
- **Navigation**: `push()`, `back()`, etc., for simplified routing.
- **Gesture**: `onTap()`, `onLongPress()`, etc., for gesture handling.
- **SizedBox**: `withWidth()`, `withSquareSize()`, etc., for sizing widgets.
- **Cubit/Bloc**: `cubit<T>()`, `bloc<T>()` for state management access.
- **Media Query**: `width`, `height`, `isLandscape`, etc., for screen data.
- **ClipRRect**: `circular()`, `topRounded()`, etc., for border radius.
- **Positioned**: `positionedTopLeft()`, etc., for `Stack` positioning.
- **Transform**: `rotate()`, `scale()`, etc., for widget transformations.
- **Visibility**: `visible()`, `invisible()`, etc., for show/hide control.
- **Theme**: `theme`, `textTheme`, etc., for theme access.
- **Post Frame Callback**: `addPostFrameCallback()`, etc., for post-build actions.

For detailed usage and additional methods, refer to the source files in `lib/extensions/`.

---

## Contact

For any questions or feedback, please reach out via email: [mahmoudelsayed.dev@gmail.com](mahmoudelsayed.dev@gmail.com)
