# 🛂 Visa Agent App

A Flutter app that simplifies the visa application process

> **Status:** UI Complete 
---

## 📱 Screenshots

<img width="3218" height="930" alt="Group 40966" src="https://github.com/user-attachments/assets/98eebae1-1e46-4a64-a4e0-f780c7890df5" />
<img width="3248" height="1414" alt="Group 40967" src="https://github.com/user-attachments/assets/2917b79b-750e-46cd-beb0-9f606718d5e1" />
<img width="1441" height="1277" alt="Group 40968" src="https://github.com/user-attachments/assets/6bfd1318-6ab1-4e46-beaf-802bea5fba2c" />
<img width="6646" height="1865" alt="Group 40969" src="https://github.com/user-attachments/assets/4f32564b-9552-4b4d-9732-c595e80acd17" />

---

## ✨ Features

- 🌍 **Country Explorer** — Browse visa requirements by destination
- 📋 **Document Checklist** — Personalized list based on nationality + destination
- 📅 **Appointment Booking** — Embassy / VFS appointment scheduler UI
- 📊 **Application Tracker** — Status tracking for submitted applications

---

## 🛠 Tech Stack

- **Framework:** Flutter (Dart)
- **Architecture:** Clean Architecture
- **Navigation:** Go Router
- **UI:** Custom components, multi-step form flows


---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/AliRajab12/visa_agent_app.git
cd visa_agent_app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

> Requires Flutter 3.x+. No API keys needed — this is a UI-only demo.

---

## 🤖 Agent Architecture (Planned)

The AI agent handles complex, multi-step visa queries:

```
User: "I'm Syrian, want to visit Japan for 2 weeks as a tourist"
Agent: → Check eligibility → List required documents → Estimate processing time → Book appointment
```

Planned integration: RAG-based agent with up-to-date visa policy knowledge base + tool use for appointment APIs.

---

## 🗺 Roadmap

- [x] Country explorer + visa type screens
- [x] Agent chat UI
- [x] Document checklist UI
- [x] Appointment booking flow UI
- [ ] LLM agent integration (RAG + tool use)
- [ ] Live embassy data API
- [ ] Push notifications for status updates

---

## 👤 Author

**Ali** — Full-Stack Engineer & Technical PM  
[LinkedIn](https://linkedin.com/in/ali-rajab-ne) · [Portfolio](https://alirajab12.github.io)

---

## 📄 License

MIT © Ali

### Code Generation

This project uses several dependencies which rely on code generation to function properly. To avoid cluttering the 
codebase, these generated files are not tracked in version control. As such, it is necessary to generate these files  
locally when building the app for the first time. It may also be necessary to re-generate the files after switching 
branches, or after modifying code used for the generation such as data models, navigation routes, and test mocks.

<b>To perform code generation for the entire project, run this command:</b>

```dart
dart run build_runner build -d
```

The ```-d``` tag tells the runner to automatically delete conflicting files that already exist. This command is typically used when building the project for the first time, or when building after there have been many changes (e.g. switching git branches). 

When working in a specific area of the app and making changes that require us to frequently re-run the generator, we can use the ```--build-filter``` flag to only re-generate the code that we are interested in (more documentation [here](https://github.com/dart-lang/build/blob/master/docs/partial_builds.md)):

```dart
dart run build_runner build -d --build-filter="lib/new_feature/**"
```

If we are making changes that are going to be very frequent and we would rather not return to the terminal for each change, we can use the watch command instead:
```dart
dart run build_runner watch -d
```

This remains running and watches for file changes, automatically generating code again in the background after a file is changed.

### Iconography

This project uses Material icons.

### Debug or Run the App on device


We have structured our flutter project in a way to debug our application in different staging environment as per developer need 

<b>1. beta</b>
```dart
flutter run --flavor beta -t lib/main.beta.dart
```

<b>2. local</b>
```dart
flutter run --flavor local -t lib/main.local.dart
```

3. production
```dart
flutter run --flavor production -t lib/main.production.dart
```

4. release
```dart
flutter run --flavor release -t lib/main.release.dart
```

5. staging
```dart
flutter run --flavor staging -t lib/main.staging.dart
```

### Steps to update app icon for android and iOS

After setting up the configuration, all that is left to do is run the package.

flutter pub get
flutter pub run flutter_launcher_icons

### Application Features

---

### Figma Design for [somi-mobile](https://www.figma.com/file/E60FjVmMT93CF4yQoWCEAO/Somi?type=design&node-id=0-1&mode=design&t=RujPyHT7K54If1i9-0) application
