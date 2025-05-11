extends Control

var pre_char_name:PackedScene = preload("res://Scenes/Instances/CharacterName.tscn")

@onready var obj_list:GridContainer = get_node("ItemList")
@onready var obj_create_character_button:Control = get_node("Block/CreateCharacter/Create")

func _ready() -> void:
	for char in Arsenal.presets_characters:
		var char_name:Control = pre_char_name.instantiate()
		char_name.character = char.c_name
		obj_list.add_child(char_name)


func _process(delta: float) -> void:
	pass


func _on_restrained_line_validation_update(is_valid: bool) -> void:
	obj_create_character_button.o_button.disabled = !is_valid
