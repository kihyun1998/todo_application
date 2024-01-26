enum ButtonSize {
  small,
  medium,
  large;

  double getSize() {
    switch (this) {
      case ButtonSize.small:
        return 50;
      case ButtonSize.medium:
        return 80;
      case ButtonSize.large:
        return 110;
    }
  }
}
