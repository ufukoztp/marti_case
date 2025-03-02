
Bu proje, Flutter kullanarak geliştirilmiş bir mobil uygulamadır. Clean mimari kullanılarak yapılandırılmıştır.

## İçindekiler

- [Başlarken](#başlarken)
- [Kurulum](#kurulum)
- [Proje Yapısı](#proje-yapısı)
- [Kullanılan Teknolojiler](#kullanılan-teknolojiler)

## Başlarken
Bu proje, Flutter SDK kullanılarak oluşturulmuştur. Uygulamanın yerel ortamınızda çalıştırılması için aşağıdaki adımları izleyin.

## Kurulum

# Repoyu klonlayın
git clone https://github.com/ufukoztp/marti_case.git

# Proje dizinine gidin
cd marti_case

# Gerekli paketleri yükleyin
flutter pub get

# Uygulamayı çalıştırın
flutter run

## Proje Yapısı
```
lib/
├── core/
│   ├── base/                 # Base yapılar
│   ├── extensions/           # Extensionslar'ın yönetimi
│   ├── logger/               # Uygulama logger class'ları
│   ├── init/                 # Dependency Injection Yönetimi
│   └── shared_widgets/              # Atomic Widget'lar
├── features/
│   ├── data/
│   │   └──── models/         # Response modeller
│   │   └──── repositories/   # Repository'ler
│   │   └──── services/       # Http Istekleri
│   │
│   ├── domain/
│   │   └──── entities/       # Entity modeller
│   │   └──── repositories/   # Soyut Repository'ler
│   │   └──── services/       # Soyut Http Istekleri
│   │
│   ├── presentation/
│       └──── widgets/        # Ekranlara özel widgetlar
│       └──── cubit/          # Bloc ve Cubit'ler
│       └──── mixinler/       # Ekranlara özel mixinler
│       └──── view/           # Ekranlar
│
└── main.dart  # Uygulama giriş noktası
```

# Kullanılan Teknolojiler
```
  State Management: flutter_bloc
  Model Generation: freezed
  Local Database: Hive
  Dependency Injection: get_it
  Responsive UI: flutter_screenutil
  Map Service: Google map
  Architecture: Clean Architecture, Atomic Widget
```


