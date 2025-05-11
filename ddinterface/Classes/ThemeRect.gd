extends ColorRect
class_name ThemeRect

@export_enum("Background","Panel") var color_id:String

func _ready() -> void:
	mouse_filter = MOUSE_FILTER_IGNORE
	color = Arsenal.get_theme_color(color_id)
