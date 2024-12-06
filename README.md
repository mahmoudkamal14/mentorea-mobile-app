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
- ORM: Entity Framework Core
- Authentication: Google Auth - LinkedIn Auth

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


