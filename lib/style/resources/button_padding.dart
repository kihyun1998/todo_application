enum ButtonPadding {
  small,
  medium,
  large;

  double getPadding() {
    switch (this) {
      case ButtonPadding.small:
        return 10;
      case ButtonPadding.medium:
        return 16;
      case ButtonPadding.large:
        return 20;
    }
  }
}
