# heartstone_cards_bloc

It is Flutter applications that shows cards from the game Heartstone, using API  https://rapidapi.com/omgvamp/api/hearthstone

This is only for learning proposes application.

## Used Packages

- [bloc](https://pub.dev/packages/flutter_bloc) 
- [freezed](https://pub.dev/packages/freezed)
- [retrofit](https://pub.dev/packages/retrofit)

bloc + freezed = more readable code

## Design Patter

Design Patter is inspired by https://verygood.ventures/blog/very-good-flutter-architecture

![App Screenshot](https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/624df076fd4c9839d08aec16_very_good_architecture_diagram.png)

## Folder structure

    .
    │   info.txt             
    │   main.dart
    │
    ├───core                        
    │   │   api_consts.dart
    │   │
    │   └───exceptions
    │           network_exception.dart
    │
    ├───data               
    │   ├───datasources
    │   │   └───remote
    │   │           heartstone_api_service.dart
    │   │           heartstone_api_service.g.dart
    │   │
    │   ├───models
    │   │   │   models.dart
    │   │   │
    │   │   ├───cardback
    │   │   │       cardback.dart
    │   │   │       cardback.freezed.dart
    │   │   │       cardback.g.dart
    │   │   │
    │   │   ├───cardfront
    │   │   │       cardfront.dart
    │   │   │       cardfront.freezed.dart
    │   │   │       cardfront.g.dart
    │   │   │
    │   │   ├───info
    │   │   │       info.dart
    │   │   │       info.freezed.dart
    │   │   │       info.g.dart
    │   │   │
    │   │   └───mechanics
    │   │           mechanics.dart
    │   │           mechanics.freezed.dart
    │   │           mechanics.g.dart
    │   │
    │   └───repositories
    │       ├───abstract
    │       │       heartstone_repositories.dart
    │       │
    │       └───implementation
    │               heartstone_repositories_impl.dart
    │
    ├───logic
    │   └───blocs
    │       ├───cardfront
    │       │       cardfront_bloc.dart
    │       │       cardfront_bloc.freezed.dart
    │       │       cardfront_event.dart
    │       │       cardfront_state.dart
    │       │
    │       └───info
    │               info_bloc.dart
    │               info_bloc.freezed.dart
    │               info_event.dart
    │               info_state.dart
    │
    └───view
        ├───pages
        │       test_page_card_grid.dart
        │       test_page_info.dart
        │
        ├───screens
        └───widgets       
     
