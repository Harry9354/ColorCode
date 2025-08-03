# 🎨 ColorCodeApp

An iOS SwiftUI application that allows users to generate random hex color codes, display them beautifully in a list, store them locally while offline, and automatically sync to Firebase Firestore when online.

---

## 🚀 Features

- ✅ Generate and display random hex color codes
- 💾 Offline local storage using `UserDefaults`
- 🔄 Auto-sync with Firebase Firestore when online
- 🌐 Live network connectivity detection
- 🧠 Intelligent retry logic for failed syncs
- 🎨 Color preview cards with timestamps and sync indicators

---

## 🖼 Screens

| Feature | Screenshot |
|--------|------------|
| Random color card | ✅ |
| Offline saved state | ✅ |
| Sync status indicators | ✅ |

---

## 🔧 Setup Instructions

1. **Clone this repo**
   ```bash
   git clone https://github.com/yourusername/ColorSyncApp.git
   ```

2. **Open in Xcode**

3. **Install Firebase SDK**
   - Go to `File > Add Packages`
   - Add: `https://github.com/firebase/firebase-ios-sdk`
   - Select: `FirebaseFirestore`, `FirebaseCore`

4. **Add Firebase Config**
   - Download `GoogleService-Info.plist` from Firebase Console
   - Drag and drop it into the Xcode project (✔️ copy if needed)

5. **Enable Firestore**
   - Go to your Firebase Console → Firestore → Create Database

6. **Build & Run**
   - Test offline/online sync, color generation, persistence

---

## 🔁 How It Works

- When a color is generated, it is saved locally with a timestamp.
- If online, it immediately uploads to Firebase.
- If offline, it stores unsynced state and automatically retries when back online.

---

## 📦 Dependencies

- SwiftUI
- Firebase Core & Firestore
- Combine
- Network framework (`NWPathMonitor`)

---

## 👨‍💻 Author

**Hariom Kumar**  
*Swift & iOS Developer*
