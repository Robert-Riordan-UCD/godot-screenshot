# Godot Screenshot

A simple screenshot tool to capture images while you are making your game.

I mostly made this to learn how addons work in a very simple scenario, inspired by [this video](https://www.youtube.com/watch?v=UrVutnQ0odo).

## Usage

1. Download or clone this repo.
2. Copy the `addons/screenshot` directory into your Godot project.
3. Ensure the addon is enabled in `Project Setting -> Plugins`.
4. Reload the project
5. Press `F4` while testing your game.

Screenshots are saved in a `screenshots/` directory at the the root of your project.

## Changing the screenshot button

Simply add a new action to the input map called `screenshot` and assign it an input.\
This overwrites the `F4` input.
