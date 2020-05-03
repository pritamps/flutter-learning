# Flutter Learning

- Stateless Widgets: Required for hot reloading
- [Flutter's documentation](https://flutter.dev/docs) is really good!
- Safe area: Area outside notification, etc.
- [Single child layout widgets](https://flutter.dev/docs/development/ui/widgets/layout#Single-child%20layout%20widgets) are used to align its content in a specific way. Many options provided.
- Rows, Columns, Stacks, etc are [multi-child widgets](https://flutter.dev/docs/development/ui/widgets/layout#Multi-child%20layout%20widgets) that layout
- [Layout cheat sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
- [Fonts](https://flutter.dev/docs/cookbook/design/fonts)
- [Material Icons](https://www.materialpalette.com/icons)
- [Card](https://api.flutter.dev/flutter/material/Card-class.html) doesn't have padding, but [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) can have a card

## Column and Row Layouts

Important properties

```dart
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
//          verticalDirection: VerticalDirection.up,
//          mainAxisSize: MainAxisSize.min,

SizedBox(width/height:30)
```

`MainAxisAlignment.center`doesn't work with `MainAxisSize.min` because the alignment is for items inside the column. So if the Axis size is the minimum, then they are occupying the whole vertical space and can't be aligned.

`MainAxisAlignment` options: `spaceEvenly`, `spaceBetween`, `center`, and so on.

## Fonts

```
flutter:
  fonts:
    - family: Raleway
      fonts:
        - asset: fonts/Raleway-Regular.ttf
        - asset: fonts/Raleway-Italic.ttf
          style: italic
```