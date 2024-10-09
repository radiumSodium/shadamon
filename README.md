# Shadamon - E-Commerce App

Shadamon is a feature-rich e-commerce app built with Flutter. It includes chat, product reviews, transaction management, and real-time notifications, providing a complete shopping experience.

## Features
- User authentication
- Product browsing and filtering by categories
- Add to cart and checkout
- Real-time chat between users
- Transaction management
- Push notifications

## Technologies Used
- Flutter (Dart)
- Firebase Firestore
- Firebase Authentication
- Riverpod (State Management)
- Dio (API handling)
- Stripe (Payment Integration)

### Folder structure of the project
```bash
lib/
├── core/
│   ├── constants/
│   │   └── app_colors.dart
│   │   └── app_text_styles.dart
│   │   └── app_strings.dart
│   ├── utils/
│   │   └── validation.dart
│   │   └── formatter.dart
│   └── theme/
│       └── app_theme.dart
│
├── data/
│   ├── models/
│   │   └── product_model.dart
│   │   └── user_model.dart
│   │   └── order_model.dart
│   ├── repositories/
│   │   └── product_repository.dart
│   │   └── user_repository.dart
│   ├── services/
│       └── api_service.dart
│       └── firebase_service.dart
│       └── local_storage_service.dart
│
├── domain/
│   ├── entities/
│   │   └── product.dart
│   │   └── user.dart
│   └── usecases/
│       └── get_products.dart
│       └── place_order.dart
│
├── presentation/
│   ├── screens/
│   │   ├── product_list_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── chat_screen.dart
│   └── widgets/
│       └── product_card.dart
│       └── cart_icon.dart
│
├── state/
│   ├── providers/
│   │   └── cart_provider.dart
│   │   └── user_provider.dart
│   ├── cubits/
│   │   └── product_cubit.dart
│   │   └── order_cubit.dart
│
├── routes/
│   └── app_router.dart
│
└── main.dart
```
## Contributing
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## State Management 
We are going to use either Provider or BLoC

