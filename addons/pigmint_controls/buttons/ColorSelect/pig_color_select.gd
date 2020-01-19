#=================================================================================
# pig_color_select.gd
#---------------------------------------------------------------------------------
# Description: 'PigColorSelect' custom control class
# Project:     "Pigmint Controls", a custom controls Plugin for Godot 3
#              https://github.com/Echopraxium/pigmint_controls
# Author:      Echopraxium 2020
# Version:     0.0.21 (2020/01/15) AAAA/MM/DD
#=================================================================================
# https://docs.godotengine.org/en/3.1/tutorials/plugins/editor/making_plugins.html
# http://www.alexhoratio.co.uk/2018/08/godot-complete-guide-to-control-nodes.html
tool
#extends TextureButton
extends "res://addons/pigmint_controls/Buttons/ColorSelect/piglet_color_select.gd"

#class_name PigColorSelect

""" 32x32 PigColorSelect icon
+--------------+................
|$$$$$$$$$$$$$$|................ 
|$$$$$$$$$$$$$$|................
|$$$$$$$$$$$$$$|...X............
|$$$$$$$$$$$$$$|..XX............
|$$$$$$$$$$$$$$|.XXXXXXX........
|$$$$$$$$$$$$$$|..XX....X.......
|$$$$$$$$$$$$$$|...X.....x......
|$$$$$$$$$$$$$$|..........X.....
|$$$$$$$$$$$$$$|..........X..... 
|$$$$$$$$$$$$$$|..........X.....
|$$$$$$$$$$$$$$|..........X.....
|$$$$$$$$$$$$$$|........XXXXX...
|$$$$$$$$$$$$$$|.........XXX....
|$$$$$$$$$$$$$$|..........X.....
+--------------+................ 
................+--------------+ 
................|°°°°°°°°°°°°°°|
................|°°°°°°°°°°°°°°| 
+-------+.......|°°°°°°°°°°°°°°|
|*******|.......|°°°°°°°°°°°°°°|
|*******|.......|°°°°°°°°°°°°°°| 
|*******|.......|°°°°°°°°°°°°°°|
|*******+---+...|°°°°°°°°°°°°°°|
|*******|:::|...|°°°°°°°°°°°°°°| 
|*******|:::|...|°°°°°°°°°°°°°°|
|*******|:::|...|°°°°°°°°°°°°°°|
+---+---+:::|...|°°°°°°°°°°°°°°|
....|:::::::|...|°°°°°°°°°°°°°°|
....|:::::::|...|°°°°°°°°°°°°°°|
....|:::::::|...|°°°°°°°°°°°°°°|
....+-------+...+--------------+
"""

#----------------------------------------------------------------------------------------
#----- Redefine virtual functions here for 'PigColorSelect' part's position and size ----
#----------------------------------------------------------------------------------------
func _getIconPath():
    return "res://addons/pigmint_controls/Buttons/ColorSelect/pig_color_select.png"

# allows to choose an alternative ColorPicker dialog 
func _getColorPickerDialog():
    return _g_color_chooser_dialog

# allows to get picked color when an alternative ColorPicker dialog is used
func _getPickedColor():
    return _g_color_chooser_dialog.get_pick_color()
	
func _getColorPartSize():
    return 14

func _getResetPartSize():
    return 14
	
func _getSwitchPartPosition():
    return Vector2(17,3)
	
func _getBackgroundColorPosition():
    return Vector2(17,17)
	
func _getResetPartPosition():
    return Vector2(1,20)
	
func _getSwitchPartSize():
    return 12
#----- Redefine virtual functions here for 'PigColorSelect' part's position and size


func _enter_tree():
    _g_icon_path = _getIconPath()
	
    FG_BG_PART_SIZE        = _getColorPartSize()
    BG_PART_POSITION       = _getBackgroundColorPosition()
    SWITCH_PART_POSITION   = _getSwitchPartPosition()
    SWITCH_PART_SIZE       = _getSwitchPartSize()
    RESET_PART_POSITION    = _getResetPartPosition()
    RESET_PART_SIZE        = _getResetPartSize()

    BUTTON_SIZE = Vector2(FG_BG_PART_SIZE, FG_BG_PART_SIZE)
    _set_icon()
    #connect("pressed", self, "_clicked")
    #_g_color_chooser_dialog = ColorPicker.new()
    #_g_color_chooser_dialog.connect("gui_input", self, "_on_Color_select_dialog_gui_input")