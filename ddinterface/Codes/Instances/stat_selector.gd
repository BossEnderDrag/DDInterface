extends Control

@export var stat = Arsenal.save_throws.STRENGHT

func _ready() -> void:
	var stat_name:String = Arsenal.save_throws.keys()[stat]
	get_node("StatName").text = stat_name.to_lower().capitalize()
