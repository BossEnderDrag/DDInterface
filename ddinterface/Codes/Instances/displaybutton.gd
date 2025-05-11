extends Control

@export var display_node:Node
@export var button_name:String = ""

@onready var o_button:Button = get_node("Button")

func _ready() -> void:
	o_button.text = button_name

func _on_button_pressed() -> void:
	if display_node:
		display_node.visible = !display_node.visible
