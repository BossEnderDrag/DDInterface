extends Control

@onready var obj_races:OptionButton = get_node("Races")
@onready var obj_classes:OptionButton = get_node("Classes")


func _ready() -> void:
	for race:String in Arsenal.races.keys():
		obj_races.add_item(race.to_lower().capitalize())
	for classe:String in Arsenal.classes.keys():
		obj_classes.add_item(classe.to_lower().capitalize())

func save_character():
	pass
