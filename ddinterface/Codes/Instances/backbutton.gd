extends Control

signal before_scene_change()

enum scenes_presets {CharactersCustom,Collection,Mainmenu}

@export var change_scene:String = ""
@export var change_scene_id:scenes_presets
@export var button_name:String = ""
@export var disabled:bool

@onready var o_button:Button = get_node("Button")

func _ready() -> void:
	o_button.text = button_name
	o_button.disabled = disabled

func _on_button_pressed() -> void:
	
	if change_scene == "":
		if change_scene_id:
			emit_signal("before_scene_change")
			SceneManager.change_scene_to_id(int(change_scene_id))
		else:
			emit_signal("before_scene_change")
			SceneManager.change_scene(SceneManager.scene_previous)
	else:
		emit_signal("before_scene_change")
		SceneManager.change_scene(change_scene)
