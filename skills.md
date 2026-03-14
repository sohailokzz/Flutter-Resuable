---
name: flutter-mvvm-provider-standard
description: Comprehensive guide for building Flutter features using MVVM architecture, Provider state management, and strict layer separation.
---

# 📱 Flutter MVVM + Provider Development Standards

This document defines the mandatory architectural patterns, folder structures, and coding rules for this project. All AI-generated and manual code must adhere to these specifications.

---

## 🏗 Architecture at a Glance
This project follows a strict **MVVM (Model-View-ViewModel)** pattern with **Clean Architecture** separation.

### Core Rules:
* **The View (Screen):** Must be a `StatelessWidget`. It contains zero business logic.
* **The ViewModel (VM):** Extends `ChangeNotifier`. It handles all state, business logic, and API calls.
* **State Management:** Use `Provider` + `ChangeNotifier`.
* **Reactivity:** Use the `Consumer<T>` widget pattern for UI updates.

---

## 📂 Required Folder Structure
Maintain this directory hierarchy strictly for every feature:

```text
lib/
├── core/                        # Shared logic and global configs
│   ├── app_shared_pref/         # Local storage logic
│   ├── constants/               # Colors, Config, Strings, Assets, Utils
│   ├── data/                    # Global data handlers
│   ├── enums/                   # App-wide enumerations
│   ├── extensions/              # Dart extensions
│   ├── models/                  # Data models (PODOs)
│   ├── services/                # API, Auth, and Database services
│   └── utils/                   # Helper functions
├── routes/                      # Navigation and Route names
├── ui/                          # Presentation Layer
│   ├── screens/                 # Feature screens (Screen + VM pairs)
│   └── widgets/                 # Reusable global UI components
├── theme/                       # App theme data
└── main.dart                    # Entry point & Provider registration

🛠 Coding Standards

1. View Implementation (The Screen)
Screens must not hold state. Use Consumer to access the ViewModel.

Template:
class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FeatureScreenVm>(
        builder: (context, vm, child) {
          if (vm.isLoading) return const Center(child: CircularProgressIndicator());
          return Center(child: Text(vm.data));
        },
      ),
    );
  }
}

2. ViewModel Implementation
All logic and API triggers must reside here. Use notifyListeners() to update the View.

Template:
class FeatureScreenVm extends ChangeNotifier {
  bool isLoading = false;
  String data = "";

  Future<void> fetchData() async {
    isLoading = true;
    notifyListeners();
    
    // Call service from core/services/
    data = await _service.getData();
    
    isLoading = false;
    notifyListeners();
  }
}

3. Provider Registration
Always declare ViewModels in MultiProvider within main.dart.

return MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => LoginScreenVm()),
    // Add new providers here
  ],
  child: const MaterialApp(...),
);

4. API Services
All API calls must be wrapped in a Service class located in core/services/.

Example:
class ApiService {
  final Http  _http = Http();

  Future<String> getData() async {
    try {
      final response = await _http.get('https://api.example.com/data');
      return response.data['data'];
    } catch (e) {
      return 'Error: $e';
    }
  }
}

5. Responsive Design
Use ResponsiveSizer for all UI dimensions.
Fonts: 16.sp
Width/Height: 50.w or 20.h

✅ Checklist Before Completion
[ ] Is the Screen a StatelessWidget?
[ ] Does the ViewModel handle all logic and notifyListeners()?
[ ] Is the ViewModel registered in main.dart?
[ ] Are all UI elements wrapped in a Consumer?
[ ] Is the folder structure compliant with the lib/ tree defined above?
