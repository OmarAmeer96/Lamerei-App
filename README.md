# Lamerei App 🚀

## Project Overview 📋

Lamerei App is a Flutter-based mobile application designed to showcase a list of products fetched from a remote API. The app uses the Bloc pattern for state management, integrates Firebase for app distribution, and employs several third-party packages to enhance functionality. This project demonstrates technical skills, attention to detail, and the ability to implement user-friendly interfaces.

## Features 🌟

- **Product Listing**: Fetch and display a list of products from a remote API.
- **Pagination**: Load more products as the user scrolls down.
- **Loading State**: Implement a loading indicator using the Shimmer package until the products are fully loaded.
- **Error Handling**: Display user-friendly error messages and retry options when API calls fail.
- **Responsive Layouts**: Adapt the UI for different screen sizes (mobile, tablet).
- **Firebase Integration**: Use Firebase for app distribution.
- **Dependency Injection**: Use GetIt for dependency injection.
- **Custom Widgets**: Use custom widgets for loading animations and error states.
- **CI/CD Workflows**: Implement CI/CD workflows for automated testing and deployment.
- **Flavors**: Use flavors to manage different environments (development, production).

## Requirements ✅

### Screen Overview

- **Name**: Product name.
- **Photo**: Product image.
- **Price**: Product price.

### API Integration

- **API**: Fake API
- **Fetch**: Fetch the product list from this API and parse the response to display the required details.

### Loading State

- **Shimmer Effect**: Implement a visually appealing Shimmer effect until the products are fully loaded.

### Design Guidelines

- **UI/UX**: Ensure a clean, professional UI with proper spacing, alignment, and typography.
- **Responsiveness**: Optimize for responsiveness and adapt the layout for different screen sizes.

### Error Handling

- **Graceful Handling**: Handle API errors gracefully and display user-friendly error messages.

## Architecture 🏗️

### State Management

- **Bloc Pattern**: Used for managing the state of the home screen.
  - **Cubit**: `home_cubit.dart`
  - **State**: `home_state.dart`

### Clean Architecture

- **Data Layer**
- **Repository**
- **UI**

## Project Structure 📂

### Main Entry Point

- **File**: `main_production.dart`, `main_development.dart`
- **Description**: Initializes the app, sets up dependency injection, and runs the main app widget.

### Dependency Injection

- **File**: `dependency_injection.dart`
- **Description**: Sets up the dependency injection using GetIt.

### Routing

- **File**: `app_router.dart`
- **Description**: Manages the app's navigation and routing.

### Models

- **Category Model**: `category.dart`
- **Product Model**: `product.dart`
- **Products Model**: `lib/features/home/data/models/products.dart`

### API Service

- **File**: `api_service.dart`
- **Description**: Defines the API service using Retrofit for making network requests.

### Repository

- **File**: `home_repo.dart`
- **Description**: Handles data fetching and error handling for the home screen.

### UI Components

- **Home View**: `home_view.dart`
- **Custom Widgets**:
  - `custom_fading_widget.dart`
  - `custom_home_item_loading_widget.dart`
  - `home_ui_states.dart`
  - `custom_home_app_bar.dart`
  - `product_item_image.dart`

### Firebase Integration

- **Firebase Options**: `firebase_options.dart`

### Fastlane Configuration

- **Files**:
  - `Fastfile`
  - `Pluginfile`
  - `Gemfile.lock`

## Dependencies 📦

### Flutter Packages:

- `flutter_bloc`
- `flutter_screenutil`
- `cached_network_image`
- `json_annotation`
- `retrofit`
- `dio`
- `firebase_core`
- `flutter_native_splash`
- `flutter_svg`
- `lottie`
- `shimmer`

### Dev Dependencies:

- `build_runner`
- `json_serializable`
- `flutter_test`
- `flutter_lints`

## Setup Instructions 🛠️

1. **Clone the Repository**:

   ```bash
   git clone <repository_url>
   ```

2. **Install Dependencies**:

   ```bash
   flutter pub get
   ```

3. **Generate JSON Serialization Code**:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the App**:

   ```bash
   flutter run --debug -t lib/main_development.dart --flavor development
   ```

5. **Build for Production**:

   ```bash
   flutter build apk --release
   ```

6. **Distribute via Firebase**:
   Use Fastlane for Firebase distribution.

## Screenshots 📸

### Mobile View 📱

| Splash Screen             | Loading                   | Home Screen               |
| ------------------------- | ------------------------- | ------------------------- |
| <img src="" width="200"/> | <img src="" width="200"/> | <img src="" width="200"/> |

### Tablet View 📟

| Home Screen               |
| ------------------------- |
| <img src="" width="200"/> |

### App Demo 🎥

[Watch the video here]()

## Usage 📱

- **Home Screen**: Displays a list of products with pagination.
- **Error Handling**: Shows error messages and retry options when API calls fail.
- **Responsive Layouts**: Adapts the UI for different screen sizes.
