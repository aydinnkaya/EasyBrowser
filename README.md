# 📱 EasyBrowser

**EasyBrowser** is a streamlined web browsing application developed using **Swift** and **WebKit**. It delivers a simplified and user-centric browsing experience by enabling access to a curated collection of developer-focused websites.

---

## 🌟 Key Features

- **Curated Website Access**: Seamlessly browse trusted developer resources with a single tap.
- **Navigation Controls**: Enjoy effortless navigation with refresh and backward/forward gesture support.
- **Progress Indicator**: Monitor page loading progress via an integrated progress bar.
- **Enhanced Security**: Restricts browsing to predefined websites for a safer experience.

---

## 🌐 Featured Video

|  ![Video 1](https://github.com/user-attachments/assets/b86b76f5-364c-4fc2-abf7-8daf888e4575)  |  ![Video 2](https://github.com/user-attachments/assets/abc5e943-f9ce-4f1e-802a-d00a2f0a10be)  |
|-------------------------------|-------------------------------|

---

## 🎨 Screenshots

| Light Mode               | Dark Mode               |
|-------------------------|--------------------------|
| ![iPhone 1](https://github.com/user-attachments/assets/0b69048e-2f54-4910-b1bc-6e3af4a9ed8a) | ![iPhone 3](https://github.com/user-attachments/assets/86730ac5-5826-41cb-bf6c-c2fd292ed505) |
| ![iPhone 2](https://github.com/user-attachments/assets/8019c3ae-12ce-4d5a-910d-5ccf91d684e8) | ![iPhone 4](https://github.com/user-attachments/assets/d357e8db-01ae-4c30-af62-2d8180a955eb) |
| ![iPad Light 1](https://github.com/user-attachments/assets/22f2684a-1b71-4d53-8273-f0257f9c5cc4) | ![iPad Dark 1](https://github.com/user-attachments/assets/b6da05c0-d2d2-45f4-9d41-2e921d180e43) |
| ![iPad Light 2](https://github.com/user-attachments/assets/9c796c23-a1f0-4c7b-9415-65436c063e69) | ![iPad Dark 2](https://github.com/user-attachments/assets/54c7a893-f143-4cb8-bb82-70bacaaf6178) |

---

## 🚀 Technologies Employed

- **Swift**: Core programming language for iOS development.
- **WebKit (WKWebView)**: Framework for rendering web content.
- **UIKit**: Framework for constructing the user interface.
- **MVC Architecture**: Ensures a modular and organized code structure.

---

## 🛠️ Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/EasyBrowser.git
   ```

2. **Open the project in Xcode**:
   - Use the most recent version of **Xcode** to open the project.

3. **Run the project**:
   - Select a simulator or connect a physical device, then press **Run (⌘R)**.

### Prerequisites

- **Xcode**: Available via the [Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
- **iOS Device/Simulator**: Compatible with devices running iOS 15 or later.

---

## 🗂️ Code Overview

### **Primary Components:**

- **ViewController.swift**: Manages core functionalities such as website loading, navigation, and access restriction.

#### Key Functions:

- **loadView()**: Initializes the WKWebView instance.
- **viewDidLoad()**: Configures the user interface and sets the default website.
- **openTapped()**: Displays the list of permitted websites.
- **openPage(action:)**: Loads the selected website.
- **observeValue()**: Tracks page loading progress.
- **decidePolicyFor(navigationAction:)**: Implements browsing restrictions.

---

## 🔒 Approved Websites

The application supports browsing only the following verified developer resources:

- [swift.org](https://swift.org)
- [hackingwithswift.com](https://hackingwithswift.com)
- [developer.apple.com](https://developer.apple.com)
- [raywenderlich.com](https://raywenderlich.com)
- [stackoverflow.com](https://stackoverflow.com/questions/tagged/swift)
- [medium.com](https://medium.com/swift-programming)
- [objc.io](https://objc.io)
- [iosdevweekly.com](https://iosdevweekly.com)

---

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. **Fork the repository.**
2. **Create a feature branch:**
   ```bash
   git checkout -b feature-branch-name
   ```
3. **Commit your changes:**
   ```bash
   git commit -m 'Add feature description'
   ```
4. **Push to your branch:**
   ```bash
   git push origin feature-branch-name
   ```
5. **Submit a pull request.**

---

## 📄 License

This project is licensed under the **MIT License**. Refer to the [LICENSE](LICENSE) file for additional details.

---

## 🙌 Acknowledgments

Special recognition goes to the **iOS Developer Community** for providing invaluable resources and tutorials.

---

**Developed with ❤️ by AydınKaya**

