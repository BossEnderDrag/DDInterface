extends Control

@onready var o_name:Label = get_node("Name")

@export var character:R_Character:
	set(new_char):
		character = new_char
		update()

func update():
	o_name.text = character.c_name
