enum Color {
  RED,
  BLUE,
  GREEN,
  ORANGE,
  LIGHT_RED,
  LIGHT_BLUE,
  LIGHT_GREEN,
  LIGHT_ORANGE,
}

enum Brightness {
  DARK,
  LIGHT,
}

class ThemeData {
  final Color accentColor;
  final Color backgroundColor;
  final Color buttonColor;
  final Brightness brightness;

  ThemeData({
    this.accentColor = Color.GREEN ,
    this.backgroundColor = Color.LIGHT_BLUE,
    this.buttonColor = Color.BLUE,
    this.brightness = Brightness.LIGHT,
  });

  ThemeData copyWith({Color? accentColor,
    Color? backgroundColor, 
    Color? buttonColor,
    Brightness? brightness}){

      return ThemeData(
        accentColor: accentColor ?? this.accentColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        buttonColor: buttonColor ?? this.buttonColor,
        brightness: brightness ?? this.brightness,
      );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '''
    Accent Color: $accentColor
    Background Color: $backgroundColor
    Button Color: $buttonColor
    Brightness: $brightness    
    ''';
  }
}

void main(List<String> args) {

  var theme = ThemeData();
  var theme2 = theme.copyWith(accentColor: Color.LIGHT_ORANGE);

  print(theme2);
}
