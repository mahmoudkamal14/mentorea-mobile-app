# Mentorea

**Mentorea** is an innovative platform designed to overcome geographic and social barriers in mentorship. It connects mentees with experienced mentors to foster meaningful interactions, enhancing career development.

---

## 🚀 Features
- **Mentor-Mentee Matching**: Find mentors based on expertise and availability.
- **Real-Time Communication**: Chat and video calls powered by **SignalR**.
- **Session Scheduling**: Easy booking of mentorship sessions.
- **Recommendation System**: Personalized mentor suggestions using Machine Learning.
- **Secure Authentication**: Sign in with Google Auth - LinkedIn Auth - Email.
- **Scalable & Reliable**: Built with modern web technologies.

---

## 🛠️ Tech Stack
### **Frontend** (Flutter)
- State Management: Bloc (Cubit)
- Key Dependencies:
  - `flutter_bloc`
  - `dio`
  - `cached_network_image`
  - `shared_preferences`

### **Backend** (ASP.NET Core Web API)
- Architecture: CQRS Pattern
- Database: SQL Server
- Real-Time Communication: SignalR

### **Other Technologies**
- **Machine Learning Component**: For recommendations.
- **Shared Preferences**: Local data storage for session management.

---

## 🌟 Project Goals
1. Simplify access to mentorship opportunities worldwide.
2. Enhance career development through personalized guidance.
3. Build a user-friendly and scalable platform.

---

## 🗂 Folder Structure (Clean Architecture)

```plaintext
lib/
│
├── core/                          # الكود المشترك عبر الطبقات
│   ├── errors/                    # تعريف الأخطاء (Failures)
│   ├── utils/                     # الأدوات المساعدة
│   ├── constants/                 # الثوابت العامة
│   └── widgets/                   # Widgets القابلة لإعادة الاستخدام
│
├── features/                      # الميزات/الوحدات (Modules)
│   ├── auth/                      # مثال على وحدة Authentication
│   │   ├── data/                  # طبقة البيانات
│   │   │   ├── models/            # النماذج (Models)
│   │   │   ├── datasources/       # مصادر البيانات (API, Local DB)
│   │   │   └── repositories_impl/ # تنفيذ الـ Repositories
│   │   └── presentation/          # طبقة العرض (Presentation Layer)
│   │       ├── logic/             # إدارة الحالة باستخدام Cubit/Bloc
│   │       ├── screens/           # الشاشات (UI Screens)
│   │       └── widgets/           # Widgets خاصة بالعرض
│   │
│   └── profile_management/        # وحدة أخرى على سبيل المثال
│       ├── data/
│       └── presentation/
│
│
└── main.dart                      # نقطة البداية للتطبيق
```

## 📸 Screenshots

Here are some screenshots showcasing the **User App Mentorea** application:

### 🌍 Splash | Languauge Screens

<img src="https://github.com/user-attachments/assets/7d746cf2-8bd5-4526-b5ee-80815d456799" alt="Splash Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/1e9adc29-7297-443e-9a31-dfdb6f27add2" alt="Languauge Screen" width="300"/>


### 🚀 Omboarding Screens

<img src="https://github.com/user-attachments/assets/f75a7d80-fca1-4a93-a435-8757f8b1bbb1" alt="Onboarding 1 Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/5d6314a3-f707-4423-8580-4f849d939e99" alt="Onboarding 2 Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/b10f30d7-db90-40f5-a260-3226c1f4ae75" alt="Onboarding 3 Screen" width="300"/>



### 🔐 Authentication Screens

<img src="https://github.com/user-attachments/assets/1d26029e-5854-4a9c-811d-8048521d5960" alt="User Type Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/f92f84cb-157c-4c12-80c8-f5f03355f9f7" alt="Login Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/7915ac15-5cf5-41fe-b12f-e963766fd642" alt="Register Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/b4a30bad-7f46-40f6-ae8c-d55425141f82" alt="Forgot Password Screen" width="300"/>


### 🔍 Explore Mentors Screens

<img src="https://github.com/user-attachments/assets/fe045a31-94fc-4cbb-a7b9-dfb7c3ea25e7" alt="Home Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/24a4db6b-d118-4e52-84f2-1e0110ddcde1" alt="Explore Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/4fb4193f-9a6b-48fb-be07-50cc71b210b9" alt="Search Screen" width="300"/>


### 📅 Book Mentorship Sessions

<img src="https://github.com/user-attachments/assets/6c6ab86b-1843-4f3c-b124-a7a4e22921ab" alt="Mentor Profile Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/d032dd85-aed6-41dd-bcc1-7175bae40544" alt="Book Session Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/2fe98bee-4f0e-4922-88f9-36ab07dd68a0" alt="Session Screen" width="300"/>


### ⚙️ App Settings

<img src="https://github.com/user-attachments/assets/181043d7-3f39-48a3-a471-c5144261dcee" alt="Settings Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/d286fd8b-4e0c-4b63-acdf-caa8671c9094" alt="Settings Screen" width="300"/>
<img src="https://github.com/user-attachments/assets/6998717d-8517-4c2c-8cb9-31f940730956" alt="Change Password Screen" width="300"/>
