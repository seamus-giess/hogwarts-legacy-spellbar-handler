# Hogwarts Legacy Spellbar Handler

An AutoHotKey (V2) application for Hogwarts Legacy providing several keybind
configurations.

Skip to the [Installation](Installation%20&%20Setup) section if you don't care about all the fluff and just want
to dive in.

## Motivation
This project was inspired by a friend asking for assistance regarding 
accessibility concerns of keybinds and spell swapping. I thought I'd
put my skills to the test and the project has since evolved beyond just 
a couple of simple keybinds.

## How its built
This project was built by leveraging AutoHoyKey's ability to structure
complex scripts by including other script files. The structure attempts to
mimic (as in, not at all) the concept of Model-View-Controller. But
I'm an amateur so don't expect a lot.

## Installaton & Setup
1. This application requires [AutoHotKey V2]
(https://github.com/AutoHotkey/AutoHotkey/releases). Kindly go and install 
it if you haven't already
(See [here](https://www.autohotkey.com/docs/v2/howto/Install.htm) if you 
need help with that).

2. Click the green `<> Code` Button at the top of the page, and click `Download ZIP` to download this project.

3. Extract the files somewhere. This project is a "script" file, meaning it
doesn't really matter where you extract it as long as it keeps the same 
file structure, as long as you have the script language installed. Probably
a good idea to keep it self-contained though.

4. Configure the values set in `./configuration.ahk` - its a bit messy, but should have everything there you need to touch.

    * Screen dimensions are set arbitrarily for 1920x180. Strongly advise
    using AHK's "Window Spy" to recalibrate. (Steam Overlay can make this a bit easier)

## Credits
- Butto - Letting me rubber duck and bounce ideas off fo him
- Lachlan - Holding my hand through the fresh OS install leading up to
this
- Doug - Convincing me to stop being a whiny baby and just do a fresh OS
install
- Various HL Nexus AHK script creators, for inspiring me from the titles 
alone <3

## License
MIT yo, enjoy and go make something neat

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
