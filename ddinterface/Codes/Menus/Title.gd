extends Control

func _ready() -> void:
	pass


func _on_arsenal_pressed() -> void:
	print("Done")
	SceneManager.change_scene("Arsenal")
