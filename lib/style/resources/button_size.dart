enum ButtonSize {
  small,
  medium,
  large;

  double getSize() {
    switch (this) {
      case ButtonSize.small:
        return 40;
      case ButtonSize.medium:
        return 70;
      case ButtonSize.large:
        return 110;
    }
  }
}
