extends Control

@onready var o_name:Label = get_node("Name")
@onready var o_stats:Label = get_node("Stats")

@export var character:R_Character:
	set(new_char):
		character = new_char
		update_character()

func _ready() -> void:
	character = character

func update_character():
	if o_name:
		o_name.text = character.c_name
		o_stats.text = ""
		for k_stat in character.stats.keys():
			o_stats.text += k_stat.capitalize() + " : " + str(character.stats[k_stat]) + "\n"
