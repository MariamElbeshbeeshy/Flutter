# Flutter News App

## Overview

**Flutter News App** is a simple and elegant news application built using the Flutter framework. It's designed to provide a fast and seamless reading experience for articles from various news sources.

The app fetches news data from a public API and presents it in an easy-to-navigate interface.

## Key Features

* **Article List:** Browse a list of the latest articles with images and headlines.
* **Category List:** Easily filter articles by category (e.g., Technology, Sports, Health) to find content relevant to your interests.
* **Integrated Reading Experience:** Tapping on an article opens its full content directly within the app using a `webview_flutter`.
* **Clean UI:** A simple and intuitive user interface focused on content readability.
* **Cross-Platform:** The app works smoothly on both Android and iOS devices.

## Demo

Watch a short video demonstration of the app in action:

https://drive.google.com/file/d/1ruLOhjqBIipB-yFXuAw9zsCublE__XhD/view?usp=drive_link

## Technologies Used

* **Flutter SDK:** The core framework for the application.
* **newsapi.org:** The API used to fetch news articles.
* **`webview_flutter`:** For displaying web content inside the app.
* **`url_launcher`:** (Used in early development) For launching external URLs.

## Getting Started

To run this project on your local machine, follow these steps:

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    cd your-repo-name
    ```
2.  **Install Packages:**
    ```bash
    flutter pub get
    ```
3.  **Run the Application:**
    ```bash
    flutter run
    ```
