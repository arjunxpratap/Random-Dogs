# Random Dog Generator

An **iOS application** built using **SwiftUI** with **MVVM architecture**, as part of an iOS development assignment. This app demonstrates my ability to build feature-rich, user-friendly applications while adhering to **Apple's design principles** and utilizing modern **iOS development practices**.

## Key Highlights

- **SwiftUI Expertise**: Developed the UI using **SwiftUI**, ensuring a seamless and intuitive user experience with responsive layouts and animations.
- **MVVM Architecture**: Adopted the **Model-View-ViewModel (MVVM)** design pattern for scalability, maintainability, and testability.
- **State Management**: Leveraged `@StateObject` and `@Published` properties to efficiently manage app state and UI updates.
- **Persistence with UserDefaults**: Implemented persistent storage to retain data (dog images) across app sessions.
- **API Integration**: Integrated with the [Dog CEO API] to fetch and display random dog images.

---

## Features

### **Generate Random Dogs**
- Fetches random dog images from the API and displays them on the screen.
- Ensures real-time image rendering with smooth transitions.

### **LRU Cache**
- Implements a Least Recently Used (LRU) cache to store the 20 most recent dog images.
- Automatically persists images across app launches using `UserDefaults`.

### **Recently Generated Dogs**
- Horizontally scrollable gallery to view all cached dog images.
- Includes a "Clear Dogs!" button to reset the gallery and cache.

---

## Technical Skills Demonstrated

- **SwiftUI**: Building modern, declarative UIs.
- **MVVM Architecture**: Efficient state and logic management.
- **Networking**: API calls using `URLSession` with asynchronous data handling.
- **Data Persistence**: Leveraging `UserDefaults` for lightweight storage.
- **Responsive Design**: Ensuring adaptability across devices.
- **Problem-Solving**: Handling caching, API integration, and state management challenges.

---

## How It Works

1. **Generate Dogs Screen**:
   - Tapping "Generate!" fetches a random dog image from the API and displays it.
   - The fetched image is saved in an LRU cache for future reference.

2. **Recently Generated Dogs**:
   - Displays cached images in a horizontally scrollable gallery.
   - Users can clear the gallery with a "Clear Dogs!" button.

---

## Getting Started

1. **Clone or Download** this repository.  
2. **Open** the `.xcodeproj` or `.xcworkspace` in Xcode (version 12 or above recommended).  
3. **Build and Run** on the iOS Simulator or a physical device.  

---

## Why This Project?

This assignment was given to me as a challenge to evaluate my skills in **iOS app development**. Through this project, I have demonstrated:
- My ability to integrate third-party APIs.
- Proficiency in building scalable and maintainable architectures.
- Attention to detail in designing user interfaces adhering to **Apple's HIG**.
- Strong problem-solving and debugging skills.

I am confident that this project showcases my readiness to contribute to your team as a skilled and passionate iOS developer.

---

## Requirements

- iOS 14+ (SwiftUI support)
- Xcode 12+
- Swift 5+

---

## License

This project is provided as-is under no specific license. Feel free to modify or adapt for personal or educational use.

---

### Let's Build Great Apps Together!
