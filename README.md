# 🎬 Movies App
A clean, modern Flutter application for browsing movies — built using **Clean Architecture**, **Bloc/Cubit**, **Dio** for networking, **TheMovieDB (TMDB)** as the data source, and **Shimmer** for elegant loading placeholders.

---

## 📸 Screenshots
| Home (Carousel) | Movie Details | Project structure |
|-----------------|--------------|---------------|
| <img src="/screenshots/screenshot1.png" width="250"/> | <img src="/screenshots/screenshot2.png" width="250"/> | <img src="/screenshots/screenshot3.png" width="250"/> |


## 🚀 Overview
This Movies App is a Flutter client that fetches movie data from **TheMovieDB (TMDB)**, presents featured, popular and top-rated lists, and shows a detailed movie view. The app uses **Clean Architecture** for separation of concerns and maintainability, **Bloc/Cubit** for state management, **Dio** for robust HTTP communication, and **Shimmer** to show polished loading states.

---

## ✨ Features
- Browse Popular / Top Rated / Now Playing movies  
- Movie detail screen with synopsis, runtime, genres and recommendations  
- Smooth loading placeholders using **Shimmer**  
- Clear separation of layers following **Clean Architecture**  
- Offline-friendly (can add caching later)  
- Scalable state management using **Bloc/Cubit**

---

## 🛠 Tech Stack
- **Flutter**
- **Bloc / Cubit** — state management
- **Dio** — HTTP client
- **TheMovieDB (TMDB)** — movie data source
- **Shimmer** — loading placeholders
- **Mockito/BlocTest** (recommended) — for unit/widget tests

---

## 📁 Project Structure (recommended)
```text
lib/
 ├── core/
 │    ├── error/
 │    ├── network/
 │    ├── services/
 │    ├── usecase/
 │    └── utils/
 ├── movies/
 │    ├── data/
 │    │    ├── data_sources/        # remote/local data sources (Dio client here)
 │    │    ├── models/              # JSON -> Model
 │    │    └── repo/                # repository implementations
 │    ├── domain/
 │    │    ├── entities/            # plain dart objects used across layers
 │    │    ├── repo/                # abstract repository interfaces
 │    │    └── usecases/            # usecase classes
 │    └── presentation/
 │         ├── components/          # shared widgets
 │         ├── controller/          # cubits/blocs
 │         └── screens/             # UI pages
 ├── main.dart
 └── app.dart
