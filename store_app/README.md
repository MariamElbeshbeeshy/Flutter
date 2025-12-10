# 🛍️ E-Commerce Product Showcase Application

## 🌟 Project Overview

This is a robust, single-source-of-truth e-commerce application prototype built with **Flutter**. It simulates a modern storefront experience by consuming a third-party API for product data and implementing real-time state management for features like product favoriting, adding or updating products.

The core objective of this project was to demonstrate clean architecture principles and efficient state management using the **Provider** package.

---

## 🎬 Demo

Witness the application in action. This demo showcases the real-time state synchronization for favoriting, CRUD operations and the seamless navigation flow.

[**Click here to watch the video on Google Drive**](https://drive.google.com/file/d/14Js0cl1YSmlpjkwuZt8dp6B6whiZGgxQ/view?usp=drive_link)


---

## 🚀 Features

The application provides a complete transactional flow for viewing and managing products:

* **Dynamic Product Listing:** Displays a comprehensive list of products fetched from the external API.
* **Category Filtering:** Supports filtering the product list by category for improved user experience.
* **Detailed Product View:** Dedicated screen to showcase full product information, including description, price, and category.
* **Full CRUD Simulation:** Implements **C**reate and **U**pdate operations, demonstrating successful data submission to the mock API endpoints.
* **Real-time State Synchronization:**
    * **Favorites Toggle:** Users can mark products as favorites.
    * **Global State Update:** Favorited status is instantly synchronized and reflected across all relevant screens (e.g., product lists and detail views) via the Provider pattern.

---

## 🛠️ Architecture and Technologies

The application adopts a layered architecture, centering around a single **`ProductServices`** `ChangeNotifier` instance acting as the primary data repository and **Single Source of Truth (SSOT)** for all product-related data.

### Core Technologies

| Technology | Role |
| :--- | :--- |
| **Flutter & Dart** | Cross-platform UI framework and primary programming language. |
| **Provider** | State management solution for efficient, scalable data sharing and global UI synchronization (especially for the favorites feature). |
| **Dio** | A powerful, feature-rich HTTP client used for all networking requests (GET, POST, PUT) to the external API. |
| **`modal_progress_hud_nsn`** | Handles user feedback by displaying an overlay loading indicator during asynchronous network operations. |

### API Endpoint

Data is sourced from the **FakeStoreAPI** (`https://fakestoreapi.com/`), which is used to simulate a production backend environment for fetching and modifying product data.

---

## 🏃 Getting Started

### Prerequisites

* Flutter SDK installed and configured.
* A physical device or emulator running to test the application.

### Installation and Launch

1.  **Clone the repository:**
    ```bash
    git clone [Your Repository URL Here]
    cd store_app_directory
    ```
2.  **Fetch dependencies:**
    ```bash
    flutter pub get
    ```
3.  **Run the app:**
    ```bash
    flutter run
    ```

### Testing the Functionality

Once launched, explore the following flows to observe the architectural design:

* Navigate between the Home screen and any Product Details screen.
* Tap the heart icon to favorite a product and confirm the status updates immediately on all relevant screens.
* Use the "Add Product" or "Update Product" functionality and observe the network request (via Dio) being sent to the mock API.

---

## 📧 Contact

* [https://www.linkedin.com/in/mariam-elbeshbeeshy/]