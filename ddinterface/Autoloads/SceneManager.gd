extends CanvasLayer

@onready var obj_animation:AnimationPlayer = get_node("Animation")

@export var scenes:Array[SceneKey]




var tim := Timer.new()
var scene_current:String = ""
var scene_previous:String = ""

func _ready() -> void:
	tim.timeout.connect(update_scene)
	add_child(tim)

func change_scene(scene_name:String,scene_anim:String="Simple"):
	
	if not obj_animation.has_animation(scene_anim):
		scene_anim = "Simple"
	obj_animation.play(scene_anim)
	tim.wait_time = float(obj_animation.get_animation(scene_anim).length)/2.0
	scene_previous = scene_current
	scene_current = scene_name
	tim.start()
	

func change_scene_to_id(scene_id:int,scene_anim:String="Simple"):
	change_scene(scenes[scene_id].scene_name)

func update_scene():
	var found:bool = false
	tim.stop()
	for scene in scenes:
		if scene.scene_name == scene_current:
			get_tree().change_scene_to_packed(scene.scene_file)
			found = true
			break
	if not found:
		print(scene_current + " : Scene not found")
