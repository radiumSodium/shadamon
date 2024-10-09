# shadamon

A mobile app


### Folder structure of the project

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


## State Management 
We are going to use either Provider or BLoC

