# Blizzard Colors

A Blizzard Themed 16 Color Ansi Palette.

Colors picked out by [Katherine
Joplin](https://www.instagram.com/kj_heartless/). Themes created and maintained
by Christopher Giroir.

## Editor / Terminal Support

* [Apple Terminal](https://github.com/kelsin/blizzard-colors/tree/master/apple-terminal)
* [Atom](https://github.com/kelsin/blizzard-colors/tree/master/atom)
* [Emacs](https://github.com/kelsin/blizzard-colors/tree/master/emacs)
* [Sublime](https://github.com/kelsin/blizzard-colors/tree/master/sublime)
* [Textmate](https://github.com/kelsin/blizzard-colors/tree/master/textmate)
* [Vim](https://github.com/kelsin/blizzard-colors/tree/master/vim)
* [VSCode](https://github.com/kelsin/blizzard-colors/tree/master/vscode)

## Colors

When possible it's always better to use the hex code, or set your ansi terminal
colors and use those instead of using the 256 color approximations.

| Ansi Number | XTerm 256 Number | Color | Name | Hex | Lore |
|---|---|---|---|---|---|
| 0 | 233 | black | ![#151515](https://via.placeholder.com/50x20/151515/ffffff?text=+) | #151515 | The Black Soulstone |
| 1 | 124 | red | ![#c21e1e](https://via.placeholder.com/50x20/c21e1e/ffffff?text=+) | #c21e1e | For the Horde |
| 2 | 70 | green | ![#519b2e](https://via.placeholder.com/50x20/519b2e/ffffff?text=+) | #519b2e | Ysera |
| 3 | 172 | yellow | ![#ea7b00](https://via.placeholder.com/50x20/ea7b00/ffffff?text=+) | #ea7b00 | Pepe |
| 4 | 31 | blue | ![#007dbf](https://via.placeholder.com/50x20/007dbf/ffffff?text=+) | #007dbf | For the Alliance |
| 5 | 91 | magenta | ![#862ea4](https://via.placeholder.com/50x20/862ea4/ffffff?text=+) | #862ea4 | Queen of Blades |
| 6 | 37 | cyan | ![#0fb2a5](https://via.placeholder.com/50x20/0fb2a5/ffffff?text=+) | #0fb2a5 | Symmetra |
| 7 | 69 | white | ![#686868](https://via.placeholder.com/50x20/686868/ffffff?text=+) | #686868 | Greymane |
| 8 | 235 | bright black | ![#2a2a2a](https://via.placeholder.com/50x20/2a2a2a/ffffff?text=+) | #2a2a2a | Reaper |
| 9 | 196 | bright red | ![#ff2e2e](https://via.placeholder.com/50x20/ff2e2e/ffffff?text=+) | #ff2e2e | Lord of Terror |
| 10 | 113 | bright green | ![#8cda38](https://via.placeholder.com/50x20/8cda38/ffffff?text=+) | #8cda38 | Legion |
| 11 | 220 | bright yellow | ![#ffc70e](https://via.placeholder.com/50x20/ffc70e/ffffff?text=+) | #ffc70e | Overwatch |
| 12 | 39 | bright blue | ![#00aeef](https://via.placeholder.com/50x20/00aeef/ffffff?text=+) | #00aeef | Psi-Blade |
| 13 | 205 | bright magenta | ![#ee4bb5](https://via.placeholder.com/50x20/ee4bb5/ffffff?text=+) | #ee4bb5 | D.Va |
| 14 | 86 | bright cyan | ![#4bf3e6](https://via.placeholder.com/50x20/4bf3e6/ffffff?text=+) | #4bf3e6 | Tyrande |
| 15 | 231 | bright white | ![#f6f6f6](https://via.placeholder.com/50x20/f6f6f6/ffffff?text=+) | #f6f6f6 | Crusader |

![Blizzard Ansi Colors](https://github.com/kelsin/blizzard-colors/raw/master/colors.png "Blizzard Ansi Colors")

## Building

This repo consists of handlebar templates in the `src` directory that use the
data in `colors.json` to generate the other themes and files in this repo. In
order to generate the files yourserve, check out this repo and then run:

```sh
# Only needed once to install node dependencies:
yarn

# Run to generate files from templates
make

# Rules are named by the directories, so to only generate emacs files:
make emacs
```
