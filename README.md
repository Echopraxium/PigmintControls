# Pigmint Controls
A [Godot](https://godotengine.org/) plugin which provides custom controls for 2D painting / drawing applications. 
This plugin currently provides 2 custom "ColorSelect" controls meant to let the user select Foreground/Background colors
1. **PigletColorSelect**: this one has a 24x24 pixels icon
  ![](https://raw.githubusercontent.com/Echopraxium/PigmintControls/master/addons/pigmint_controls/buttons/ColorSelect/piglet_color_select.png)
2. **PigColorSelect**: this one has a 32x32 pixels icon
  ![](https://raw.githubusercontent.com/Echopraxium/PigmintControls/master/addons/pigmint_controls/buttons/ColorSelect/pig_color_select.png)

![Pigmint Controls](https://raw.githubusercontent.com/Echopraxium/PigmintControls/master/addons/pigmint_controls/buttons/ColorSelect/Pigmint_Color_Select_Screenshot.png)

## How to install the Plugin ?
1. In Godot, Use the **AssetLib** link (in the top center of Godot's main window)
2. In the `Search` field, type `Pig` to find more quickly the `Pigmint Controls` plugin
3. Use `[Download]` then `[Install]`
4. You should now have the following: `my_godot_project/addons/pigmint_controls`.
5. Check that the plugin well installed: use the **AssetLib** button then `[Plugins]` and activate it (with the Combo button in `Status` column).

## How to use a PigColorSelect or PigletColorSelect
1. Create a 2D scene in your *Godot* project.
2. Create a container (e.g. a `HBoxContainer` or `VBoxContainer`) as a child of the 2D scene.
3. Select this container then use the right mouse button and select `+ Add Child Node`
4. In the `Search` field, type `Pig` to find more quickly the `PigletColorSelect` or `PigColorSelect` controls.
    - PigletColorSelect: ![](https://raw.githubusercontent.com/Echopraxium/PigmintControls/master/addons/pigmint_controls/buttons/ColorSelect/piglet_color_select_icon.png)
    - PigColorSelect: ![](https://raw.githubusercontent.com/Echopraxium/PigmintControls/master/addons/pigmint_controls/buttons/ColorSelect/pig_color_select_icon.png)
5. Select one of these `ColorSelect` control and then `[Create]`

## Interactions
Once you have a `PigletColorSelect` or `PigColorSelect` in your scene you will see a button with a custom icon. This button has in fact 4 selectable **parts** each one for a specific *interaction*:
1. **Select Foreground color**: a left mouse button click in the small square of the top left part. This will popup a `ColorPicker` which allows the user to select a color.
2. **Select Background color**: a click in the small square of the bottom right part. This will also popup a `ColorPicker`.
3. **Switch Foreground/Background colors**: a click on the double arrow in the top right part.
4. **Reset Foreground/Background colors**: a click on the bottom left part (a tiny white square under a tiny black square, these are the `Reset colors`).

## Signals
There are 4 custom signals which can be connected to handle each of the 4 possible *interactions*
1. `foreground_color_changed(fg_color)`: the connected function will receive the *Foreground color* when it has been changed by the user.
2. `background_color_changed(bg_color)`: the connected function will receive the *Background color* when it has been changed by the user.
3. `colors_switch(color_select_control)`: the connected function will receive the `color_select` control when the user *Switches* colors.
4. `colors_reset(color_select_control)`: the connected function will receive the `color_select` control when the user *Resets* colors.

## Properties
There are 2 properties on `PigletColorSelect` and `PigColorSelect`. They can be accessed with *setters* and *getters*:
1. **ForegroundColor**
```
	set_foreground_color(color)
	get_foreground_color()
```
2. **BackgroundColor**	
```
	set_background_color(color)
	get_background_color()
```
