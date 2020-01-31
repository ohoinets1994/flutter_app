# flutter_app

Hey there flutter application.

## Description

The application allows user to generate random colors by tapping on the screen,
also displays the hex code of the current color.

The app consists of two screens Screen1 and Screen2:
- Screen1 uses a CustomNumberGenerator to generate random color.
- Screen2 uses a Random (dart:math) to generate random color.

Both screens have a button that sets the default color value.

The application implements the architectural pattern Provider (Scoped Model),
as it allows you to pull out business logic from view (widget) and gives you the opportunity
to reuse this logic in different modules of the system.
