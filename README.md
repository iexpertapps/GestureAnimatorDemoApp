# 🎯 GestureAnimatorDemoApp

An interactive **SwiftUI** app that showcases the full capabilities of the [GestureAnimator](https://github.com/iexpertapps/GestureAnimator.git) Swift Package — a declarative, interruptible animation framework driven by gestures.


---

## 📱 About the Demo App

**GestureAnimatorDemoApp** lets you experiment live with:

- Smooth gesture-driven animations
- Real-time transitions with spring physics
- Shape morphing and path-following effects
- Performance tracking (FPS overlay)

The app is designed to both test and demonstrate all available gesture modifiers from the package in an elegant and interactive UI.

---

## ✨ Features

| Effect         | Gesture         | Behavior                                |
|----------------|-----------------|-----------------------------------------|
| **Zoom**       | Pinch           | Smooth scale-in/out                     |
| **Drag**       | Pan             | Momentum-based position shift           |
| **Rotate**     | Two-finger twist| Natural rotation with easing            |
| **Morph**      | Horizontal drag | Shape interpolates (e.g., Capsule → Star)|
| **Custom Path**| Vertical drag   | Animates along a Bézier-defined path    |

- Built with pure **SwiftUI**
- Runs on iOS 15+
- Designed for demoing in both simulator and device

---

## 📦 Installation

### 🔗 Clone the Repository

### bash 
git clone https://github.com/yourusername/GestureAnimator.git
cd GestureAnimator 


🛠 Open in Xcode
Open GestureAnimatorDemoApp.xcodeproj in Xcode.

Run the app with ⌘ + R.

✅ Requirements
Xcode 14.2+

iOS 15.0+

Swift 5.9+

🧑‍💻 Architecture
The app demonstrates how to integrate and use the GestureAnimator Swift Package in a SwiftUI project. The codebase is modular and cleanly structured for easy integration into other projects.

GestureAnimatorDemoApp/Views/ – Gesture Showcase UI

GestureAnimatorDemoApp/ViewModels/ – State and Bindings for each effect

GestureAnimatorDemoApp/Utilities/ – FPS tracker, debug overlay

🧰 Powered By
✅ GestureAnimator Package

🧩 SwiftUI 3+

🎨 Custom shape and Bézier interpolation engine

🧪 Xcode Instruments for profiling

🤝 Contributing
We welcome improvements and new gesture effects! To contribute:

Fork this repo

Create a branch: feature/my-new-effect

Submit a Pull Request 🚀

Or open an issue if you’d like to request a feature.

📄 License
MIT License © iexpertapps

Built with ❤️ by gesture animation nerds for gesture animation nerds.
