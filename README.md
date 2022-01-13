# Nord version of the Arc GTK and Qt theme 

There are a couple of attempts at a Nord GTK theme online but they all suffer from issues, either they don't work with both Qt and GTK applications, or they use the same colour everywhere with little variation which looks a little too flat (imho). 

Arc already solves most of the problems but Nord colours are prettier. This uses the existing ArcDark theme and the kvArcDark theme for kvantum (qt) and swaps the colours from the Arc theme to the closest colours from the Nord theme.

## Dependencies

Make sure you have the following installed

- git
- kvantum
- meson
- sed
- find

## Installation

1. Run `setup.sh` 

2. During the installation, it will open kvantummanager, select the ArcDarkNord theme to style Qt applications.

3. Select the GTK theme `Arc-Dark` however you select GTK themes for your desktop environment  (e.g. `GTK_THEME=Arc-Dark` environment variable)

4. Set kvantum as your QT theme however you select Qt themes for your desktop environment (e.g. `QT_STYLE_OVERRIDE=kvantum`)



